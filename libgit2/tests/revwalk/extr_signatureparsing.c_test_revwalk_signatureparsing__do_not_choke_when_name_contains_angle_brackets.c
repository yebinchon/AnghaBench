
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; scalar_t__ time; } ;
struct TYPE_5__ {TYPE_1__ when; int name; int email; } ;
typedef TYPE_2__ git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int _repo ;
 int _walk ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 TYPE_2__* git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 int git_revwalk_next (int *,int ) ;
 int git_revwalk_push (int ,int ) ;

void test_revwalk_signatureparsing__do_not_choke_when_name_contains_angle_brackets(void)
{
 git_reference *ref;
 git_oid commit_oid;
 git_commit *commit;
 const git_signature *signature;





 cl_git_pass(git_reference_lookup(&ref, _repo, "refs/heads/haacked"));

 git_revwalk_push(_walk, git_reference_target(ref));
 cl_git_pass(git_revwalk_next(&commit_oid, _walk));

 cl_git_pass(git_commit_lookup(&commit, _repo, git_reference_target(ref)));

 signature = git_commit_committer(commit);
 cl_assert_equal_s("foo@example.com", signature->email);
 cl_assert_equal_s("Yu V. Bin Haacked", signature->name);
 cl_assert_equal_i(1323847743, (int)signature->when.time);
 cl_assert_equal_i(60, signature->when.offset);

 git_commit_free(commit);
 git_reference_free(ref);
}
