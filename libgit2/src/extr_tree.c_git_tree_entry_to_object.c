
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; } ;
typedef TYPE_1__ git_tree_entry ;
typedef int git_repository ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int assert (int) ;
 int git_object_lookup (int **,int *,int ,int ) ;

int git_tree_entry_to_object(
 git_object **object_out,
 git_repository *repo,
 const git_tree_entry *entry)
{
 assert(entry && object_out);
 return git_object_lookup(object_out, repo, entry->oid, GIT_OBJECT_ANY);
}
