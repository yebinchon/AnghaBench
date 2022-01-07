
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_4__* idx2wd; TYPE_2__* head2idx; } ;
typedef TYPE_5__ git_status_list ;
struct TYPE_16__ {scalar_t__ oid_calculations; scalar_t__ stat_calls; } ;
typedef TYPE_6__ git_diff_perfdata ;
struct TYPE_13__ {scalar_t__ oid_calculations; scalar_t__ stat_calls; } ;
struct TYPE_14__ {TYPE_3__ perf; } ;
struct TYPE_11__ {scalar_t__ oid_calculations; scalar_t__ stat_calls; } ;
struct TYPE_12__ {TYPE_1__ perf; } ;


 int GIT_DIFF_PERFDATA_VERSION ;
 int GIT_ERROR_CHECK_VERSION (TYPE_6__*,int ,char*) ;
 int assert (TYPE_6__*) ;

int git_status_list_get_perfdata(
 git_diff_perfdata *out, const git_status_list *status)
{
 assert(out);
 GIT_ERROR_CHECK_VERSION(out, GIT_DIFF_PERFDATA_VERSION, "git_diff_perfdata");

 out->stat_calls = 0;
 out->oid_calculations = 0;

 if (status->head2idx) {
  out->stat_calls += status->head2idx->perf.stat_calls;
  out->oid_calculations += status->head2idx->perf.oid_calculations;
 }
 if (status->idx2wd) {
  out->stat_calls += status->idx2wd->perf.stat_calls;
  out->oid_calculations += status->idx2wd->perf.oid_calculations;
 }

 return 0;
}
