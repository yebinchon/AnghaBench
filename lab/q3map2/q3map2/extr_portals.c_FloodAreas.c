
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int FindAreas_r (int ) ;
 int FloodSkyboxArea_r (int ) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int c_areas ;

void FloodAreas( tree_t *tree ){
 Sys_FPrintf( SYS_VRB,"--- FloodAreas ---\n" );
 FindAreas_r( tree->headnode );


 FloodSkyboxArea_r( tree->headnode );





 Sys_FPrintf( SYS_VRB, "%9d areas\n", c_areas );
}
