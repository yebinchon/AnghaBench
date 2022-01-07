
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_status_t ;
struct TYPE_3__ {int idx2wd; } ;
typedef TYPE_1__ git_status_list ;
typedef int git_diff_delta ;


 int GIT_STATUS_CURRENT ;
 int index_delta2status (int *) ;
 int workdir_delta2status (int ,int *) ;

__attribute__((used)) static git_status_t status_compute(
 git_status_list *status,
 git_diff_delta *head2idx,
 git_diff_delta *idx2wd)
{
 git_status_t st = GIT_STATUS_CURRENT;

 if (head2idx)
  st |= index_delta2status(head2idx);

 if (idx2wd)
  st |= workdir_delta2status(status->idx2wd, idx2wd);

 return st;
}
