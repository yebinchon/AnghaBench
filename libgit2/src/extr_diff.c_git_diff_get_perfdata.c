
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int oid_calculations; int stat_calls; } ;
typedef TYPE_2__ git_diff_perfdata ;
struct TYPE_8__ {int oid_calculations; int stat_calls; } ;
struct TYPE_10__ {TYPE_1__ perf; } ;
typedef TYPE_3__ git_diff ;


 int GIT_DIFF_PERFDATA_VERSION ;
 int GIT_ERROR_CHECK_VERSION (TYPE_2__*,int ,char*) ;
 int assert (TYPE_2__*) ;

int git_diff_get_perfdata(git_diff_perfdata *out, const git_diff *diff)
{
 assert(out);
 GIT_ERROR_CHECK_VERSION(out, GIT_DIFF_PERFDATA_VERSION, "git_diff_perfdata");
 out->stat_calls = diff->perf.stat_calls;
 out->oid_calculations = diff->perf.oid_calculations;
 return 0;
}
