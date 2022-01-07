
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int winding_t ;
typedef int tree_t ;
struct TYPE_15__ {TYPE_3__* shaderInfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_16__ {int compileFlags; float subdivisions; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_17__ {scalar_t__ type; float* texRange; float* maxs; float* mins; int fogNum; TYPE_1__* sideRef; int * mapBrush; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_18__ {int firstDrawSurf; } ;
typedef TYPE_5__ entity_t ;
typedef int brush_t ;
struct TYPE_14__ {TYPE_2__* side; } ;


 int C_SKY ;
 scalar_t__ CalcSurfaceTextureRange (TYPE_4__*) ;
 int ClassifySurfaces (int,TYPE_4__*) ;
 int ClearSurface (TYPE_4__*) ;
 scalar_t__ SURFACE_FACE ;
 int SYS_VRB ;
 int SubdivideFace_r (TYPE_5__*,int *,TYPE_2__*,int *,int,float) ;
 int Sys_FPrintf (int ,char*) ;
 int * WindingFromDrawSurf (TYPE_4__*) ;
 int ceil (float) ;
 double fabs (float) ;
 TYPE_4__* mapDrawSurfs ;
 int numMapDrawSurfs ;
 scalar_t__ qfalse ;
 float texRange ;

void SubdivideFaceSurfaces( entity_t *e, tree_t *tree ){
 int i, j, numBaseDrawSurfs, fogNum;
 mapDrawSurface_t *ds;
 brush_t *brush;
 side_t *side;
 shaderInfo_t *si;
 winding_t *w;
 float range, size, subdivisions, s2;



 Sys_FPrintf( SYS_VRB, "--- SubdivideFaceSurfaces ---\n" );


 numBaseDrawSurfs = numMapDrawSurfs;
 for ( i = e->firstDrawSurf; i < numBaseDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];


  if ( ds->type != SURFACE_FACE || ds->mapBrush == ((void*)0) || ds->sideRef == ((void*)0) || ds->sideRef->side == ((void*)0) ) {
   continue;
  }


  brush = ds->mapBrush;
  side = ds->sideRef->side;


  si = side->shaderInfo;
  if ( si == ((void*)0) ) {
   continue;
  }


  if ( si->compileFlags & C_SKY ) {
   continue;
  }


  ClassifySurfaces( 1, ds );
  if ( CalcSurfaceTextureRange( ds ) == qfalse ) {

   range = ( ds->texRange[ 0 ] > ds->texRange[ 1 ] ? ds->texRange[ 0 ] : ds->texRange[ 1 ] );
   size = ds->maxs[ 0 ] - ds->mins[ 0 ];
   for ( j = 1; j < 3; j++ )
    if ( ( ds->maxs[ j ] - ds->mins[ j ] ) > size ) {
     size = ds->maxs[ j ] - ds->mins[ j ];
    }
   subdivisions = ( size / range ) * texRange;
   subdivisions = ceil( subdivisions / 2 ) * 2;
   for ( j = 1; j < 8; j++ )
   {
    s2 = ceil( (float) texRange / j );
    if ( fabs( subdivisions - s2 ) <= 4.0 ) {
     subdivisions = s2;
     break;
    }
   }
  }
  else{
   subdivisions = si->subdivisions;
  }


  if ( si->subdivisions > 0 && si->subdivisions < subdivisions ) {
   subdivisions = si->subdivisions;
  }
  if ( subdivisions < 1.0f ) {
   continue;
  }


  fogNum = ds->fogNum;


  w = WindingFromDrawSurf( ds );
  ClearSurface( ds );


  SubdivideFace_r( e, brush, side, w, fogNum, subdivisions );
 }
}
