
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; } ;
struct tree {struct object object; } ;
struct repository {int dummy; } ;


 int UNINTERESTING ;
 int mark_tree_contents_uninteresting (struct repository*,struct tree*) ;

void mark_tree_uninteresting(struct repository *r, struct tree *tree)
{
 struct object *obj;

 if (!tree)
  return;

 obj = &tree->object;
 if (obj->flags & UNINTERESTING)
  return;
 obj->flags |= UNINTERESTING;
 mark_tree_contents_uninteresting(r, tree);
}
