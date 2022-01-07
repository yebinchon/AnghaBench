
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct walk_object {int seen; scalar_t__ uninteresting; int const id; } ;
typedef int git_tree_entry ;
typedef int git_tree ;
struct TYPE_5__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;




 int git_packbuilder_insert (TYPE_1__*,int const*,char const*) ;
 int * git_tree_entry_byindex (int *,size_t) ;
 int * git_tree_entry_id (int const*) ;
 char* git_tree_entry_name (int const*) ;
 int git_tree_entry_type (int const*) ;
 size_t git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int const* git_tree_id (int *) ;
 int git_tree_lookup (int **,int ,int const*) ;
 int retrieve_object (struct walk_object**,TYPE_1__*,int const*) ;

int insert_tree(git_packbuilder *pb, git_tree *tree)
{
 size_t i;
 int error;
 git_tree *subtree;
 struct walk_object *obj;
 const char *name;

 if ((error = retrieve_object(&obj, pb, git_tree_id(tree))) < 0)
  return error;

 if (obj->seen || obj->uninteresting)
  return 0;

 obj->seen = 1;

 if ((error = git_packbuilder_insert(pb, &obj->id, ((void*)0))))
  return error;

 for (i = 0; i < git_tree_entrycount(tree); i++) {
  const git_tree_entry *entry = git_tree_entry_byindex(tree, i);
  const git_oid *entry_id = git_tree_entry_id(entry);
  switch (git_tree_entry_type(entry)) {
  case 128:
   if ((error = git_tree_lookup(&subtree, pb->repo, entry_id)) < 0)
    return error;

   error = insert_tree(pb, subtree);
   git_tree_free(subtree);

   if (error < 0)
    return error;

   break;
  case 129:
   if ((error = retrieve_object(&obj, pb, entry_id)) < 0)
    return error;
   if (obj->uninteresting)
    continue;
   name = git_tree_entry_name(entry);
   if ((error = git_packbuilder_insert(pb, entry_id, name)) < 0)
    return error;
   break;
  default:

   ;
  }
 }


 return error;
}
