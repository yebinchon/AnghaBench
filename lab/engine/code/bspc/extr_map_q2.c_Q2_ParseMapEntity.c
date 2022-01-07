
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
struct TYPE_20__ {char* string; } ;
typedef TYPE_1__ token_t ;
struct TYPE_21__ {size_t planenum; int texinfo; } ;
typedef TYPE_2__ side_t ;
typedef int script_t ;
typedef int qboolean ;
struct TYPE_22__ {int numsides; int contents; TYPE_2__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;
struct TYPE_23__ {struct TYPE_23__* next; } ;
typedef TYPE_4__ epair_t ;
struct TYPE_24__ {int firstbrush; int numbrushes; int areaportalnum; scalar_t__* origin; TYPE_4__* epairs; } ;
typedef TYPE_5__ entity_t ;
struct TYPE_25__ {int normal; scalar_t__ dist; } ;


 int CONTENTS_AREAPORTAL ;
 scalar_t__ DotProduct (int ,scalar_t__*) ;
 int Error (char*,...) ;
 size_t FindFloatPlane (int ,scalar_t__) ;
 int GetVectorForKey (TYPE_5__*,char*,scalar_t__*) ;
 size_t MAX_MAP_ENTITIES ;
 int MakeBrushWindings (TYPE_3__*) ;
 int PS_ReadToken (int *,TYPE_1__*) ;
 int PS_UnreadLastToken (int *) ;
 TYPE_4__* ParseEpair (int *) ;
 int Q2_MoveBrushesToWorld (TYPE_5__*) ;
 int Q2_ParseBrush (int *,TYPE_5__*) ;
 int SetKeyValue (TYPE_5__*,char*,char*) ;
 int TexinfoForBrushTexture (TYPE_7__*,int *,scalar_t__*) ;
 char* ValueForKey (TYPE_5__*,char*) ;
 TYPE_2__* brushsides ;
 int c_areaportals ;
 TYPE_5__* entities ;
 TYPE_3__* mapbrushes ;
 TYPE_7__* mapplanes ;
 int memset (TYPE_5__*,int ,int) ;
 size_t num_entities ;
 int nummapbrushes ;
 int * side_brushtextures ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

qboolean Q2_ParseMapEntity(script_t *script)
{
 entity_t *mapent;
 epair_t *e;
 side_t *s;
 int i, j;
 vec_t newdist;
 mapbrush_t *b;
 token_t token;

 if (!PS_ReadToken(script, &token)) return 0;

 if (strcmp(token.string, "{") )
  Error ("ParseEntity: { not found");

 if (num_entities == MAX_MAP_ENTITIES)
  Error ("num_entities == MAX_MAP_ENTITIES");

 mapent = &entities[num_entities];
 num_entities++;
 memset (mapent, 0, sizeof(*mapent));
 mapent->firstbrush = nummapbrushes;
 mapent->numbrushes = 0;



 do
 {
  if (!PS_ReadToken(script, &token))
  {
   Error("ParseEntity: EOF without closing brace");
  }
  if (!strcmp(token.string, "}")) break;
  if (!strcmp(token.string, "{"))
  {
   Q2_ParseBrush(script, mapent);
  }
  else
  {
   PS_UnreadLastToken(script);
   e = ParseEpair(script);
   e->next = mapent->epairs;
   mapent->epairs = e;
  }
 } while(1);

 GetVectorForKey(mapent, "origin", mapent->origin);




 if (mapent->origin[0] || mapent->origin[1] || mapent->origin[2])
 {
  for (i=0 ; i<mapent->numbrushes ; i++)
  {
   b = &mapbrushes[mapent->firstbrush + i];
   for (j=0 ; j<b->numsides ; j++)
   {
    s = &b->original_sides[j];
    newdist = mapplanes[s->planenum].dist -
     DotProduct (mapplanes[s->planenum].normal, mapent->origin);
    s->planenum = FindFloatPlane (mapplanes[s->planenum].normal, newdist);
    s->texinfo = TexinfoForBrushTexture (&mapplanes[s->planenum],
     &side_brushtextures[s-brushsides], mapent->origin);
   }
   MakeBrushWindings (b);
  }
 }



 if (!strcmp ("func_group", ValueForKey (mapent, "classname")))
 {
  Q2_MoveBrushesToWorld (mapent);
  mapent->numbrushes = 0;
  return 1;
 }



 if (!strcmp ("func_areaportal", ValueForKey (mapent, "classname")))
 {
  char str[128];

  if (mapent->numbrushes != 1)
   Error ("Entity %i: func_areaportal can only be a single brush", num_entities-1);

  b = &mapbrushes[nummapbrushes-1];
  b->contents = CONTENTS_AREAPORTAL;
  c_areaportals++;
  mapent->areaportalnum = c_areaportals;

  sprintf (str, "%i", c_areaportals);
  SetKeyValue (mapent, "style", str);
  Q2_MoveBrushesToWorld (mapent);
  return 1;
 }

 return 1;
}
