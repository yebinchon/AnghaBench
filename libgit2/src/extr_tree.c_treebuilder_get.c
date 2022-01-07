
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
typedef TYPE_1__ git_treebuilder ;
typedef int git_tree_entry ;


 int assert (int) ;
 int * git_strmap_get (int ,char const*) ;

__attribute__((used)) static git_tree_entry *treebuilder_get(git_treebuilder *bld, const char *filename)
{
 assert(bld && filename);
 return git_strmap_get(bld->map, filename);
}
