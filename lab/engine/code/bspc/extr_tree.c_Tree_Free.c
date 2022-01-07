
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int FreeMemory (TYPE_1__*) ;
 int Log_Print (char*) ;
 scalar_t__ MemorySize (TYPE_1__*) ;
 int PrintMemorySize (scalar_t__) ;
 int Tree_FreePortals_r (int ) ;
 int Tree_Free_r (int ) ;
 scalar_t__ freedtreemem ;

void Tree_Free(tree_t *tree)
{

 if (!tree) return;

 freedtreemem = 0;

 Tree_FreePortals_r(tree->headnode);
 Tree_Free_r(tree->headnode);



 FreeMemory(tree);





}
