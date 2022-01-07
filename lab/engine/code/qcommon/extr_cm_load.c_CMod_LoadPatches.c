
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_10__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_2__ lump_t ;
struct TYPE_11__ {int shaderNum; int firstVert; int patchHeight; int patchWidth; int surfaceType; } ;
typedef TYPE_3__ dsurface_t ;
struct TYPE_12__ {int * xyz; } ;
typedef TYPE_4__ drawVert_t ;
struct TYPE_13__ {int pc; int surfaceFlags; int contents; } ;
typedef TYPE_5__ cPatch_t ;
struct TYPE_14__ {int numSurfaces; TYPE_1__* shaders; TYPE_5__** surfaces; } ;
struct TYPE_9__ {int surfaceFlags; int contentFlags; } ;


 int CM_GeneratePatchCollide (int,int,int **) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 void* Hunk_Alloc (int,int ) ;
 int LittleFloat (int ) ;
 int LittleLong (int ) ;
 int MAX_PATCH_VERTS ;
 int MST_PATCH ;
 TYPE_6__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadPatches( lump_t *surfs, lump_t *verts ) {
 drawVert_t *dv, *dv_p;
 dsurface_t *in;
 int count;
 int i, j;
 int c;
 cPatch_t *patch;
 vec3_t points[MAX_PATCH_VERTS];
 int width, height;
 int shaderNum;

 in = (void *)(cmod_base + surfs->fileofs);
 if (surfs->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 cm.numSurfaces = count = surfs->filelen / sizeof(*in);
 cm.surfaces = Hunk_Alloc( cm.numSurfaces * sizeof( cm.surfaces[0] ), h_high );

 dv = (void *)(cmod_base + verts->fileofs);
 if (verts->filelen % sizeof(*dv))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");



 for ( i = 0 ; i < count ; i++, in++ ) {
  if ( LittleLong( in->surfaceType ) != MST_PATCH ) {
   continue;
  }


  cm.surfaces[ i ] = patch = Hunk_Alloc( sizeof( *patch ), h_high );


  width = LittleLong( in->patchWidth );
  height = LittleLong( in->patchHeight );
  c = width * height;
  if ( c > MAX_PATCH_VERTS ) {
   Com_Error( ERR_DROP, "ParseMesh: MAX_PATCH_VERTS" );
  }

  dv_p = dv + LittleLong( in->firstVert );
  for ( j = 0 ; j < c ; j++, dv_p++ ) {
   points[j][0] = LittleFloat( dv_p->xyz[0] );
   points[j][1] = LittleFloat( dv_p->xyz[1] );
   points[j][2] = LittleFloat( dv_p->xyz[2] );
  }

  shaderNum = LittleLong( in->shaderNum );
  patch->contents = cm.shaders[shaderNum].contentFlags;
  patch->surfaceFlags = cm.shaders[shaderNum].surfaceFlags;


  patch->pc = CM_GeneratePatchCollide( width, height, points );
 }
}
