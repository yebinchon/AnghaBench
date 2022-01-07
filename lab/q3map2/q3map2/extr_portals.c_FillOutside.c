
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int FillOutside_r (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int Sys_Printf (char*,scalar_t__) ;
 scalar_t__ c_inside ;
 scalar_t__ c_outside ;
 scalar_t__ c_solid ;

void FillOutside( node_t *headnode ){
 c_outside = 0;
 c_inside = 0;
 c_solid = 0;
 Sys_FPrintf( SYS_VRB,"--- FillOutside ---\n" );
 FillOutside_r( headnode );
 Sys_FPrintf( SYS_VRB,"%9d solid leafs\n", c_solid );
 Sys_Printf( "%9d leafs filled\n", c_outside );
 Sys_FPrintf( SYS_VRB, "%9d inside leafs\n", c_inside );
}
