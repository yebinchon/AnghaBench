
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_24__ {int intvalue; int string; } ;
typedef TYPE_1__ token_t ;
struct TYPE_25__ {int contents; int surf; int planenum; int texinfo; int flags; } ;
typedef TYPE_2__ side_t ;
typedef int script_t ;
struct TYPE_26__ {int entitynum; int leafnum; int numsides; int contents; int maxs; int mins; scalar_t__ brushnum; TYPE_2__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;
struct TYPE_27__ {int numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_28__ {int flags; int value; int name; void** scale; void* rotate; void** shift; } ;
typedef TYPE_5__ brush_texture_t ;
struct TYPE_30__ {int origin; } ;
struct TYPE_29__ {int flags; int value; int contents; } ;


 int AAS_CreateMapBrushes (TYPE_3__*,TYPE_4__*,int) ;
 int AddBrushBevels (TYPE_3__*) ;
 scalar_t__ BrushExists (TYPE_3__*) ;
 int CONTENTS_DETAIL ;
 int CONTENTS_LAVA ;
 int CONTENTS_MIST ;
 int CONTENTS_MONSTERCLIP ;
 int CONTENTS_ORIGIN ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int Error (char*,...) ;
 int FindMiptex (int ) ;
 int LAST_VISIBLE_CONTENTS ;
 int Log_Print (char*,int,scalar_t__) ;
 size_t MAX_MAPFILE_BRUSHES ;
 size_t MAX_MAPFILE_BRUSHSIDES ;
 int MakeBrushWindings (TYPE_3__*) ;
 scalar_t__ PS_CheckTokenType (int *,int ,int ,TYPE_1__*) ;
 int PS_ExpectAnyToken (int *,TYPE_1__*) ;
 int PS_ExpectTokenString (int *,char*) ;
 int PS_ExpectTokenType (int *,int ,int ,TYPE_1__*) ;
 int PS_ReadToken (int *,TYPE_1__*) ;
 int PlaneFromPoints (int*,int*,int*) ;
 int Q2_BrushContents (TYPE_3__*) ;
 int SFL_TEXTURED ;
 int SURF_HINT ;
 int SURF_SKIP ;
 int SURF_TRANS33 ;
 int SURF_TRANS66 ;
 int SetKeyValue (TYPE_9__*,char*,char*) ;
 int TEXINFO_NODE ;
 int TT_NUMBER ;
 int TexinfoForBrushTexture (int *,TYPE_5__*,int ) ;
 int VectorAdd (int ,int ,scalar_t__*) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 void* atof (int ) ;
 void* atol (int ) ;
 TYPE_2__* brushsides ;
 int c_clipbrushes ;
 int c_squattbrushes ;
 scalar_t__ create_aas ;
 TYPE_9__* entities ;
 scalar_t__ fulldetail ;
 TYPE_3__* mapbrushes ;
 int * mapplanes ;
 scalar_t__ nodetail ;
 scalar_t__ nowater ;
 int num_entities ;
 size_t nummapbrushes ;
 size_t nummapbrushsides ;
 TYPE_5__* side_brushtextures ;
 int sprintf (char*,char*,int,int,int) ;
 int strcmp (int ,char*) ;
 int strcpy (int ,int ) ;
 TYPE_6__* textureref ;
 int vec3_origin ;

void Q2_ParseBrush (script_t *script, entity_t *mapent)
{
 mapbrush_t *b;
 int i, j, k;
 int mt;
 side_t *side, *s2;
 int planenum;
 brush_texture_t td;
 int planepts[3][3];
 token_t token;

 if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
  Error ("nummapbrushes == MAX_MAPFILE_BRUSHES");

 b = &mapbrushes[nummapbrushes];
 b->original_sides = &brushsides[nummapbrushsides];
 b->entitynum = num_entities-1;
 b->brushnum = nummapbrushes - mapent->firstbrush;
 b->leafnum = -1;

 do
 {
  if (!PS_ReadToken(script, &token))
   break;
  if (!strcmp(token.string, "}") )
   break;



  if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
   Error ("MAX_MAPFILE_BRUSHSIDES");
  side = &brushsides[nummapbrushsides];


  for (i = 0; i < 3; i++)
  {
   if (i != 0) PS_ExpectTokenString(script, "(");
   for (j = 0; j < 3; j++)
   {
    PS_ExpectAnyToken(script, &token);
    planepts[i][j] = atof(token.string);
   }
   PS_ExpectTokenString(script, ")");
  }




  PS_ExpectAnyToken(script, &token);
  strcpy(td.name, token.string);

  PS_ExpectAnyToken(script, &token);
  td.shift[0] = atol(token.string);
  PS_ExpectAnyToken(script, &token);
  td.shift[1] = atol(token.string);
  PS_ExpectAnyToken(script, &token);
  td.rotate = atol(token.string);
  PS_ExpectAnyToken(script, &token);
  td.scale[0] = atof(token.string);
  PS_ExpectAnyToken(script, &token);
  td.scale[1] = atof(token.string);


  mt = FindMiptex (td.name);
  td.flags = textureref[mt].flags;
  td.value = textureref[mt].value;
  side->contents = textureref[mt].contents;
  side->surf = td.flags = textureref[mt].flags;


  if (PS_CheckTokenType(script, TT_NUMBER, 0, &token))
  {
   side->contents = token.intvalue;
   PS_ExpectTokenType(script, TT_NUMBER, 0, &token);
   side->surf = td.flags = token.intvalue;
   PS_ExpectTokenType(script, TT_NUMBER, 0, &token);
   td.value = token.intvalue;
  }


  if (side->surf & (SURF_TRANS33|SURF_TRANS66) )
   side->contents |= CONTENTS_DETAIL;
  if (side->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
   side->contents |= CONTENTS_DETAIL;
  if (fulldetail)
   side->contents &= ~CONTENTS_DETAIL;
  if (!(side->contents & ((LAST_VISIBLE_CONTENTS-1)
   | CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP|CONTENTS_MIST) ) )
   side->contents |= CONTENTS_SOLID;


  if (side->surf & (SURF_HINT|SURF_SKIP) )
  {
   side->contents = 0;
   side->surf &= ~CONTENTS_DETAIL;
  }
  planenum = PlaneFromPoints (planepts[0], planepts[1], planepts[2]);
  if (planenum == -1)
  {
   Log_Print("Entity %i, Brush %i: plane with no normal\n"
    , b->entitynum, b->brushnum);
   continue;
  }




  for (k=0 ; k<b->numsides ; k++)
  {
   s2 = b->original_sides + k;
   if (s2->planenum == planenum)
   {
    Log_Print("Entity %i, Brush %i: duplicate plane\n"
     , b->entitynum, b->brushnum);
    break;
   }
   if ( s2->planenum == (planenum^1) )
   {
    Log_Print("Entity %i, Brush %i: mirrored plane\n"
     , b->entitynum, b->brushnum);
    break;
   }
  }
  if (k != b->numsides)
   continue;





  side = b->original_sides + b->numsides;
  side->planenum = planenum;
  side->texinfo = TexinfoForBrushTexture (&mapplanes[planenum],
   &td, vec3_origin);



  side_brushtextures[nummapbrushsides] = td;

  nummapbrushsides++;
  b->numsides++;
 } while (1);


 b->contents = Q2_BrushContents (b);
 if (nodetail && (b->contents & CONTENTS_DETAIL) )
 {
  b->numsides = 0;
  return;
 }


 if (nowater && (b->contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER)) )
 {
  b->numsides = 0;
  return;
 }


 MakeBrushWindings (b);



 if (b->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
 {
  c_clipbrushes++;
  for (i=0 ; i<b->numsides ; i++)
   b->original_sides[i].texinfo = TEXINFO_NODE;
 }
 if (b->contents & CONTENTS_ORIGIN)
 {
  char string[32];
  vec3_t origin;

  if (num_entities == 1)
  {
   Error ("Entity %i, Brush %i: origin brushes not allowed in world"
    , b->entitynum, b->brushnum);
   return;
  }

  VectorAdd (b->mins, b->maxs, origin);
  VectorScale (origin, 0.5, origin);

  sprintf (string, "%i %i %i", (int)origin[0], (int)origin[1], (int)origin[2]);
  SetKeyValue (&entities[b->entitynum], "origin", string);

  VectorCopy (origin, entities[b->entitynum].origin);


  b->numsides = 0;

  return;
 }

 AddBrushBevels(b);

 nummapbrushes++;
 mapent->numbrushes++;
}
