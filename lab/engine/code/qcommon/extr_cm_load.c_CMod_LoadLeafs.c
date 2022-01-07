
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_7__ {int numLeafSurfaces; int firstLeafSurface; int numLeafBrushes; int firstLeafBrush; int area; int cluster; } ;
typedef TYPE_2__ dleaf_t ;
struct TYPE_8__ {scalar_t__ cluster; int area; void* numLeafSurfaces; void* firstLeafSurface; void* numLeafBrushes; void* firstLeafBrush; } ;
typedef TYPE_3__ cLeaf_t ;
struct TYPE_9__ {int numLeafs; scalar_t__ numClusters; int numAreas; void* areaPortals; void* areas; TYPE_3__* leafs; } ;


 int BOX_LEAFS ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 void* Hunk_Alloc (int,int ) ;
 void* LittleLong (int ) ;
 TYPE_4__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadLeafs (lump_t *l)
{
 int i;
 cLeaf_t *out;
 dleaf_t *in;
 int count;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 count = l->filelen / sizeof(*in);

 if (count < 1)
  Com_Error (ERR_DROP, "Map with no leafs");

 cm.leafs = Hunk_Alloc( ( BOX_LEAFS + count ) * sizeof( *cm.leafs ), h_high );
 cm.numLeafs = count;

 out = cm.leafs;
 for ( i=0 ; i<count ; i++, in++, out++)
 {
  out->cluster = LittleLong (in->cluster);
  out->area = LittleLong (in->area);
  out->firstLeafBrush = LittleLong (in->firstLeafBrush);
  out->numLeafBrushes = LittleLong (in->numLeafBrushes);
  out->firstLeafSurface = LittleLong (in->firstLeafSurface);
  out->numLeafSurfaces = LittleLong (in->numLeafSurfaces);

  if (out->cluster >= cm.numClusters)
   cm.numClusters = out->cluster + 1;
  if (out->area >= cm.numAreas)
   cm.numAreas = out->area + 1;
 }

 cm.areas = Hunk_Alloc( cm.numAreas * sizeof( *cm.areas ), h_high );
 cm.areaPortals = Hunk_Alloc( cm.numAreas * cm.numAreas * sizeof( *cm.areaPortals ), h_high );
}
