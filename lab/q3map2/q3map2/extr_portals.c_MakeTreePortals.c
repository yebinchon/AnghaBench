
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int MakeHeadnodePortals (TYPE_1__*) ;
 int MakeTreePortals_r (int ) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int c_badportals ;
 int c_tinyportals ;

void MakeTreePortals( tree_t *tree ){
 Sys_FPrintf( SYS_VRB, "--- MakeTreePortals ---\n" );
 MakeHeadnodePortals( tree );
 MakeTreePortals_r( tree->headnode );
 Sys_FPrintf( SYS_VRB, "%9d tiny portals\n", c_tinyportals );
 Sys_FPrintf( SYS_VRB, "%9d bad portals\n", c_badportals );
}
