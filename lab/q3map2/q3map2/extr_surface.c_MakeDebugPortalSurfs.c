
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
typedef int shaderInfo_t ;


 int MakeDebugPortalSurfs_r (int ,int *) ;
 int SYS_VRB ;
 int * ShaderInfoForShader (char*) ;
 int Sys_FPrintf (int ,char*) ;

void MakeDebugPortalSurfs( tree_t *tree ){
 shaderInfo_t *si;



 Sys_FPrintf( SYS_VRB, "--- MakeDebugPortalSurfs ---\n" );


 si = ShaderInfoForShader( "debugportals" );


 MakeDebugPortalSurfs_r( tree->headnode, si );
}
