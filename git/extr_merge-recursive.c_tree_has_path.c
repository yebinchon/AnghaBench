
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct tree {TYPE_1__ object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int get_tree_entry (struct repository*,int *,char const*,struct object_id*,unsigned short*) ;

__attribute__((used)) static int tree_has_path(struct repository *r, struct tree *tree,
    const char *path)
{
 struct object_id hashy;
 unsigned short mode_o;

 return !get_tree_entry(r,
          &tree->object.oid, path,
          &hashy, &mode_o);
}
