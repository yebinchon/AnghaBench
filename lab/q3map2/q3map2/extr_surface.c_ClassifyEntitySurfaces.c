
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int firstDrawSurf; } ;
typedef TYPE_1__ entity_t ;


 int ClassifySurfaces (int,int *) ;
 int FinishSurface (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 int TidyEntitySurfaces (TYPE_1__*) ;
 int * mapDrawSurfs ;
 int numMapDrawSurfs ;

void ClassifyEntitySurfaces( entity_t *e ){
 int i;



 Sys_FPrintf( SYS_VRB, "--- ClassifyEntitySurfaces ---\n" );


 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {
  FinishSurface( &mapDrawSurfs[ i ] );
  ClassifySurfaces( 1, &mapDrawSurfs[ i ] );
 }


 TidyEntitySurfaces( e );
}
