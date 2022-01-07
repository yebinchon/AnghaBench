
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {scalar_t__ mkdir_calls; scalar_t__ stat_calls; int member_0; } ;
typedef TYPE_1__ git_checkout_perfdata ;
struct TYPE_6__ {int checkout_strategy; TYPE_1__* perfdata_payload; int perfdata_cb; } ;
typedef TYPE_2__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_2__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int perfdata_cb ;

void test_checkout_tree__can_collect_perfdata(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);
 git_checkout_perfdata perfdata = {0};

 opts.perfdata_cb = perfdata_cb;
 opts.perfdata_payload = &perfdata;

 assert_on_branch(g_repo, "master");
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

 cl_assert(perfdata.mkdir_calls > 0);
 cl_assert(perfdata.stat_calls > 0);

 git_object_free(obj);
}
