
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct walk_object {int uninteresting; } ;
typedef int git_tree_entry ;
typedef int git_tree ;
struct TYPE_5__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;




 int * git_tree_entry_byindex (int *,size_t) ;
 int * git_tree_entry_id (int const*) ;
 int git_tree_entry_type (int const*) ;
 size_t git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int const*) ;
 int mark_blob_uninteresting (TYPE_1__*,int const*) ;
 int retrieve_object (struct walk_object**,TYPE_1__*,int const*) ;

__attribute__((used)) static int mark_tree_uninteresting(git_packbuilder *pb, const git_oid *id)
{
 struct walk_object *obj;
 git_tree *tree;
 int error;
 size_t i;

 if ((error = retrieve_object(&obj, pb, id)) < 0)
  return error;

 if (obj->uninteresting)
  return 0;

 obj->uninteresting = 1;

 if ((error = git_tree_lookup(&tree, pb->repo, id)) < 0)
  return error;

 for (i = 0; i < git_tree_entrycount(tree); i++) {
  const git_tree_entry *entry = git_tree_entry_byindex(tree, i);
  const git_oid *entry_id = git_tree_entry_id(entry);
  switch (git_tree_entry_type(entry)) {
  case 128:
   if ((error = mark_tree_uninteresting(pb, entry_id)) < 0)
    goto cleanup;
   break;
  case 129:
   if ((error = mark_blob_uninteresting(pb, entry_id)) < 0)
    goto cleanup;
   break;
  default:

   ;
  }
 }

cleanup:
 git_tree_free(tree);
 return error;
}
