
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int dist; int normal; } ;
typedef TYPE_1__ sin_dplane_t ;
struct TYPE_23__ {size_t texinfo; size_t planenum; } ;
typedef TYPE_2__ sin_dbrushside_t ;
struct TYPE_24__ {int numsides; int firstside; int contents; } ;
typedef TYPE_3__ sin_dbrush_t ;
struct TYPE_25__ {int contents; int surf; int planenum; size_t texinfo; int flags; } ;
typedef TYPE_4__ side_t ;
struct TYPE_26__ {int numsides; int contents; TYPE_4__* original_sides; scalar_t__ brushnum; TYPE_6__* entitynum; int leafnum; } ;
typedef TYPE_5__ mapbrush_t ;
struct TYPE_27__ {int numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_6__ entity_t ;
struct TYPE_28__ {int flags; } ;


 int AAS_CreateMapBrushes (TYPE_5__*,TYPE_6__*,int) ;
 scalar_t__ BrushExists (TYPE_5__*) ;
 int CONTENTS_DETAIL ;
 int CONTENTS_LAVA ;
 int CONTENTS_MIST ;
 int CONTENTS_MONSTERCLIP ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int Error (char*) ;
 int FindFloatPlane (int ,int ) ;
 int LAST_VISIBLE_CONTENTS ;
 int Log_Print (char*,TYPE_6__*,scalar_t__) ;
 size_t MAX_MAPFILE_BRUSHES ;
 size_t MAX_MAPFILE_BRUSHSIDES ;
 int MakeBrushWindings (TYPE_5__*) ;
 int MarkBrushBevels (TYPE_5__*) ;
 int SFL_TEXTURED ;
 int SURF_HINT ;
 int SURF_SKIP ;
 int SURF_TRANS33 ;
 int SURF_TRANS66 ;
 int Sin_BrushContents (TYPE_5__*) ;
 size_t TEXINFO_NODE ;
 TYPE_4__* brushsides ;
 int c_clipbrushes ;
 int c_squattbrushes ;
 scalar_t__ create_aas ;
 int * dbrushleafnums ;
 int entities ;
 scalar_t__ fulldetail ;
 TYPE_5__* mapbrushes ;
 scalar_t__ nodetail ;
 scalar_t__ nowater ;
 size_t nummapbrushes ;
 size_t nummapbrushsides ;
 TYPE_3__* sin_dbrushes ;
 TYPE_2__* sin_dbrushsides ;
 scalar_t__* sin_dbrushsidetextured ;
 TYPE_1__* sin_dplanes ;
 TYPE_7__* sin_texinfo ;

void Sin_BSPBrushToMapBrush(sin_dbrush_t *bspbrush, entity_t *mapent)
{
 mapbrush_t *b;
 int i, k, n;
 side_t *side, *s2;
 int planenum;
 sin_dbrushside_t *bspbrushside;
 sin_dplane_t *bspplane;

 if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
  Error ("nummapbrushes >= MAX_MAPFILE_BRUSHES");

 b = &mapbrushes[nummapbrushes];
 b->original_sides = &brushsides[nummapbrushsides];
 b->entitynum = mapent-entities;
 b->brushnum = nummapbrushes - mapent->firstbrush;
 b->leafnum = dbrushleafnums[bspbrush - sin_dbrushes];

 for (n = 0; n < bspbrush->numsides; n++)
 {

  bspbrushside = &sin_dbrushsides[bspbrush->firstside + n];

  if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
  {
   Error ("MAX_MAPFILE_BRUSHSIDES");
  }

  side = &brushsides[nummapbrushsides];

  if (sin_dbrushsidetextured[bspbrush->firstside + n]) side->flags |= SFL_TEXTURED;
  else side->flags &= ~SFL_TEXTURED;

  side->contents = bspbrush->contents;

  if (bspbrushside->texinfo < 0) side->surf = 0;
  else side->surf = sin_texinfo[bspbrushside->texinfo].flags;


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


  bspplane = &sin_dplanes[bspbrushside->planenum];
  planenum = FindFloatPlane(bspplane->normal, bspplane->dist);







  for (k = 0; k < b->numsides; k++)
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


  if (bspbrushside->texinfo < 0) side->texinfo = 0;
  else side->texinfo = bspbrushside->texinfo;







  nummapbrushsides++;
  b->numsides++;
 }


 b->contents = bspbrush->contents;
 Sin_BrushContents(b);

 if (BrushExists(b))
 {
  c_squattbrushes++;
  b->numsides = 0;
  return;
 }


 if (create_aas)
 {

  AAS_CreateMapBrushes(b, mapent, 0);
  return;
 }


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


 MakeBrushWindings(b);


 MarkBrushBevels(b);



 if (b->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
 {
   c_clipbrushes++;
  for (i = 0; i < b->numsides; i++)
   b->original_sides[i].texinfo = TEXINFO_NODE;
 }
 nummapbrushes++;
 mapent->numbrushes++;
}
