
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


 int assert (int ) ;
 int * git_array_alloc (int ) ;
 int git_array_init (int ) ;
 int git_commit_list_free (TYPE_2__**) ;
 int git_oid_cpy (int *,int *) ;
 int git_oidarray__from_array (int *,int *) ;
 int git_revwalk_free (int *) ;
 int merge_bases_many (TYPE_2__**,int **,int *,size_t,int const*) ;

int git_merge_bases_many(git_oidarray *out, git_repository *repo, size_t length, const git_oid input_array[])
{
 git_revwalk *walk;
 git_commit_list *list, *result = ((void*)0);
 int error = 0;
 git_array_oid_t array;

 assert(out && repo && input_array);

 if ((error = merge_bases_many(&result, &walk, repo, length, input_array)) < 0)
  return error;

 git_array_init(array);

 list = result;
 while (list) {
  git_oid *id = git_array_alloc(array);
  if (id == ((void*)0)) {
   error = -1;
   goto cleanup;
  }

  git_oid_cpy(id, &list->item->oid);
  list = list->next;
 }

 git_oidarray__from_array(out, &array);

cleanup:
 git_commit_list_free(&result);
 git_revwalk_free(walk);

 return error;
}
