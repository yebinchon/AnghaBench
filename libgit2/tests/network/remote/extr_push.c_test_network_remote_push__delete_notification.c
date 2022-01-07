
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char** member_0; int member_1; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_reference ;
struct TYPE_10__ {char* src_refname; char* dst_refname; int src; int dst; } ;
typedef TYPE_3__ git_push_update ;
struct TYPE_8__ {TYPE_3__* payload; int push_negotiation; } ;
struct TYPE_11__ {TYPE_1__ callbacks; } ;
typedef TYPE_4__ git_push_options ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 TYPE_4__ GIT_PUSH_OPTIONS_INIT ;
 int _remote ;
 int _repo ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 int git_remote_push (int ,TYPE_2__ const*,TYPE_4__*) ;
 int memset (int *,int ,int) ;
 int negotiation_cb ;

void test_network_remote_push__delete_notification(void)
{
 git_push_options opts = GIT_PUSH_OPTIONS_INIT;
 git_reference *ref;
 git_push_update expected;
 char *refspec = ":refs/heads/master";
 const git_strarray refspecs = {
  &refspec,
  1,
 };

 cl_git_pass(git_reference_lookup(&ref, _repo, "refs/heads/master"));

 expected.src_refname = "";
 expected.dst_refname = "refs/heads/master";
 memset(&expected.dst, 0, sizeof(git_oid));
 git_oid_cpy(&expected.src, git_reference_target(ref));

 opts.callbacks.push_negotiation = negotiation_cb;
 opts.callbacks.payload = &expected;
 cl_git_pass(git_remote_push(_remote, &refspecs, &opts));

 git_reference_free(ref);
 cl_git_fail_with(GIT_ENOTFOUND, git_reference_lookup(&ref, _repo, "refs/heads/master"));

}
