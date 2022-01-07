
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numSurfaces; int * surface; } ;
typedef TYPE_1__ picoModel_t ;


 scalar_t__ PicoGetSurfaceNumIndexes (int ) ;

int PicoGetModelTotalIndexes( picoModel_t *model ){
 int i, count;


 if ( model == ((void*)0) ) {
  return 0;
 }
 if ( model->surface == ((void*)0) ) {
  return 0;
 }

 count = 0;
 for ( i = 0; i < model->numSurfaces; i++ )
  count += PicoGetSurfaceNumIndexes( model->surface[ i ] );

 return count;
}
