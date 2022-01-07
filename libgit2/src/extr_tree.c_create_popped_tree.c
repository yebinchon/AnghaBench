
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bld; scalar_t__ tree; int name; } ;
typedef TYPE_1__ tree_stack_entry ;
typedef int git_tree_entry ;
typedef int git_oid ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int GIT_ERROR_TREE ;
 int GIT_FILEMODE_TREE ;
 scalar_t__ GIT_OBJECT_TREE ;
 int git__free (int ) ;
 int git_buf_clear (TYPE_2__*) ;
 int git_buf_puts (TYPE_2__*,int ) ;
 int git_error_set (int ,char*) ;
 int * git_tree_entry_byname (scalar_t__,int ) ;
 scalar_t__ git_tree_entry_type (int const*) ;
 int git_tree_free (scalar_t__) ;
 scalar_t__ git_treebuilder_entrycount (int ) ;
 int git_treebuilder_free (int ) ;
 int git_treebuilder_insert (int *,int ,int ,int *,int ) ;
 int git_treebuilder_remove (int ,int ) ;
 int git_treebuilder_write (int *,int ) ;

__attribute__((used)) static int create_popped_tree(tree_stack_entry *current, tree_stack_entry *popped, git_buf *component)
{
 int error;
 git_oid new_tree;

 git_tree_free(popped->tree);


 if (git_treebuilder_entrycount(popped->bld) == 0) {
  git_treebuilder_free(popped->bld);
  error = git_treebuilder_remove(current->bld, popped->name);
  git__free(popped->name);
  return error;
 }

 error = git_treebuilder_write(&new_tree, popped->bld);
 git_treebuilder_free(popped->bld);

 if (error < 0) {
  git__free(popped->name);
  return error;
 }


 git_buf_clear(component);
 git_buf_puts(component, popped->name);
 git__free(popped->name);

 GIT_ERROR_CHECK_ALLOC(component->ptr);


 if (current->tree) {
  const git_tree_entry *to_replace;
  to_replace = git_tree_entry_byname(current->tree, component->ptr);
  if (to_replace && git_tree_entry_type(to_replace) != GIT_OBJECT_TREE) {
   git_error_set(GIT_ERROR_TREE, "D/F conflict when updating tree");
   return -1;
  }
 }

 return git_treebuilder_insert(((void*)0), current->bld, component->ptr, &new_tree, GIT_FILEMODE_TREE);
}
