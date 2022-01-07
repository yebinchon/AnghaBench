
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct tree {TYPE_1__ object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 struct tree* lookup_tree (struct repository*,struct object_id*) ;
 scalar_t__ oideq (int *,struct object_id*) ;
 int shift_tree (struct repository*,int *,int *,struct object_id*,int ) ;
 int shift_tree_by (struct repository*,int *,int *,struct object_id*,char const*) ;

__attribute__((used)) static struct tree *shift_tree_object(struct repository *repo,
          struct tree *one, struct tree *two,
          const char *subtree_shift)
{
 struct object_id shifted;

 if (!*subtree_shift) {
  shift_tree(repo, &one->object.oid, &two->object.oid, &shifted, 0);
 } else {
  shift_tree_by(repo, &one->object.oid, &two->object.oid, &shifted,
         subtree_shift);
 }
 if (oideq(&two->object.oid, &shifted))
  return two;
 return lookup_tree(repo, &shifted);
}
