
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oidarray ;
typedef int git_oid ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* item; } ;
typedef TYPE_2__ git_commit_list ;
typedef int git_array_oid_t ;
struct TYPE_5__ {int oid; } ;


 int * git_array_alloc (int ) ;
 int git_array_init (int ) ;
 int git_commit_list_free (TYPE_2__**) ;
 int git_oid_cpy (int *,int *) ;
 int git_oidarray__from_array (int *,int *) ;
 int git_revwalk_free (int *) ;
 int merge_bases (TYPE_2__**,int **,int *,int const*,int const*) ;

int git_merge_bases(git_oidarray *out, git_repository *repo, const git_oid *one, const git_oid *two)
{
 int error;
 git_revwalk *walk;
 git_commit_list *result, *list;
 git_array_oid_t array;

 git_array_init(array);

 if ((error = merge_bases(&result, &walk, repo, one, two)) < 0)
  return error;

 list = result;
 while (list) {
  git_oid *id = git_array_alloc(array);
  if (id == ((void*)0))
   goto on_error;

  git_oid_cpy(id, &list->item->oid);
  list = list->next;
 }

 git_oidarray__from_array(out, &array);
 git_commit_list_free(&result);
 git_revwalk_free(walk);

 return 0;

on_error:
 git_commit_list_free(&result);
 git_revwalk_free(walk);
 return -1;
}
