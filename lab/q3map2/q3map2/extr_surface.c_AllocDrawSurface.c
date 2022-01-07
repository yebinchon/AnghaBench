
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ surfaceType_t ;
struct TYPE_5__ {int planeNum; int outputNum; size_t surfaceNum; int fogNum; scalar_t__ type; } ;
typedef TYPE_1__ mapDrawSurface_t ;


 int Error (char*,size_t) ;
 size_t MAX_MAP_DRAW_SURFS ;
 scalar_t__ NUM_SURFACE_TYPES ;
 scalar_t__ SURFACE_BAD ;
 int defaultFogNum ;
 TYPE_1__* mapDrawSurfs ;
 int memset (TYPE_1__*,int ,int) ;
 size_t numMapDrawSurfs ;

mapDrawSurface_t *AllocDrawSurface( surfaceType_t type ){
 mapDrawSurface_t *ds;



 if ( type <= SURFACE_BAD || type >= NUM_SURFACE_TYPES ) {
  Error( "AllocDrawSurface: Invalid surface type %d specified", type );
 }


 if ( numMapDrawSurfs >= MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS (%d) exceeded", MAX_MAP_DRAW_SURFS );
 }
 ds = &mapDrawSurfs[ numMapDrawSurfs ];
 numMapDrawSurfs++;


 memset( ds, 0, sizeof( mapDrawSurface_t ) );
 ds->type = type;
 ds->planeNum = -1;
 ds->fogNum = defaultFogNum;
 ds->outputNum = -1;
 ds->surfaceNum = numMapDrawSurfs - 1;

 return ds;
}
