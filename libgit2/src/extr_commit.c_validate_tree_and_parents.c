
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
typedef int * (* git_commit_parent_callback ) (size_t,void*) ;
struct TYPE_6__ {scalar_t__ size; } ;
typedef TYPE_1__ git_array_oid_t ;


 int GIT_EMODIFIED ;
 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_ERROR_OBJECT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TREE ;
 int * git_array_alloc (TYPE_1__) ;
 int git_array_clear (TYPE_1__) ;
 int git_array_get (TYPE_1__,int ) ;
 int git_error_set (int ,char*) ;
 int git_object__is_valid (int *,int const*,int ) ;
 scalar_t__ git_oid_cmp (int const*,int ) ;
 int git_oid_cpy (int *,int const*) ;

__attribute__((used)) static int validate_tree_and_parents(git_array_oid_t *parents, git_repository *repo, const git_oid *tree,
 git_commit_parent_callback parent_cb, void *parent_payload,
 const git_oid *current_id, bool validate)
{
 size_t i;
 int error;
 git_oid *parent_cpy;
 const git_oid *parent;

 if (validate && !git_object__is_valid(repo, tree, GIT_OBJECT_TREE))
  return -1;

 i = 0;
 while ((parent = parent_cb(i, parent_payload)) != ((void*)0)) {
  if (validate && !git_object__is_valid(repo, parent, GIT_OBJECT_COMMIT)) {
   error = -1;
   goto on_error;
  }

  parent_cpy = git_array_alloc(*parents);
  GIT_ERROR_CHECK_ALLOC(parent_cpy);

  git_oid_cpy(parent_cpy, parent);
  i++;
 }

 if (current_id && (parents->size == 0 || git_oid_cmp(current_id, git_array_get(*parents, 0)))) {
  git_error_set(GIT_ERROR_OBJECT, "failed to create commit: current tip is not the first parent");
  error = GIT_EMODIFIED;
  goto on_error;
 }

 return 0;

on_error:
 git_array_clear(*parents);
 return error;
}
