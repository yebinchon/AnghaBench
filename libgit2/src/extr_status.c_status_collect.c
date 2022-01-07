
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int paired; } ;
typedef TYPE_1__ git_status_list ;
struct TYPE_9__ {int * index_to_workdir; int * head_to_index; int status; } ;
typedef TYPE_2__ git_status_entry ;
typedef int git_diff_delta ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_2__* git__malloc (int) ;
 int git_vector_insert (int *,TYPE_2__*) ;
 int status_compute (TYPE_1__*,int *,int *) ;
 int status_is_included (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int status_collect(
 git_diff_delta *head2idx,
 git_diff_delta *idx2wd,
 void *payload)
{
 git_status_list *status = payload;
 git_status_entry *status_entry;

 if (!status_is_included(status, head2idx, idx2wd))
  return 0;

 status_entry = git__malloc(sizeof(git_status_entry));
 GIT_ERROR_CHECK_ALLOC(status_entry);

 status_entry->status = status_compute(status, head2idx, idx2wd);
 status_entry->head_to_index = head2idx;
 status_entry->index_to_workdir = idx2wd;

 return git_vector_insert(&status->paired, status_entry);
}
