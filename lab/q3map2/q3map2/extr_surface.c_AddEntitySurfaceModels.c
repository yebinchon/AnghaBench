
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int firstDrawSurf; } ;
typedef TYPE_1__ entity_t ;


 scalar_t__ AddSurfaceModels (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 int * mapDrawSurfs ;
 int numMapDrawSurfs ;
 int numSurfaceModels ;

void AddEntitySurfaceModels( entity_t *e ){
 int i;



 Sys_FPrintf( SYS_VRB, "--- AddEntitySurfaceModels ---\n" );


 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
  numSurfaceModels += AddSurfaceModels( &mapDrawSurfs[ i ] );
}
