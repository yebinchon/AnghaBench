
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int paired; int idx2wd; int head2idx; } ;
typedef TYPE_1__ git_status_list ;


 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;
 int git_diff_free (int ) ;
 int git_vector_free_deep (int *) ;

void git_status_list_free(git_status_list *status)
{
 if (status == ((void*)0))
  return;

 git_diff_free(status->head2idx);
 git_diff_free(status->idx2wd);

 git_vector_free_deep(&status->paired);

 git__memzero(status, sizeof(*status));
 git__free(status);
}
