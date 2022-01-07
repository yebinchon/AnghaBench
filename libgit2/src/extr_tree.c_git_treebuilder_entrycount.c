
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int map; } ;
typedef TYPE_1__ git_treebuilder ;


 int assert (TYPE_1__*) ;
 size_t git_strmap_size (int ) ;

size_t git_treebuilder_entrycount(git_treebuilder *bld)
{
 assert(bld);

 return git_strmap_size(bld->map);
}
