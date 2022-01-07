
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int NumberLeafs_r (int ) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 scalar_t__ num_solidfaces ;
 scalar_t__ num_visclusters ;
 scalar_t__ num_visportals ;

void NumberClusters( tree_t *tree ) {
 num_visclusters = 0;
 num_visportals = 0;
 num_solidfaces = 0;

 Sys_FPrintf( SYS_VRB,"--- NumberClusters ---\n" );


 NumberLeafs_r( tree->headnode );

 Sys_FPrintf( SYS_VRB, "%9d visclusters\n", num_visclusters );
 Sys_FPrintf( SYS_VRB, "%9d visportals\n", num_visportals );
 Sys_FPrintf( SYS_VRB, "%9d solidfaces\n", num_solidfaces );
}
