
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_merge_options ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_MERGE_OPTIONS_INIT ;
 int MERGE_BRANCH_OID ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_merge (int ,int const**,int,int *,TYPE_1__*) ;
 int git_oid_fromstr (int *,int ) ;
 int repo ;

__attribute__((used)) static int merge_branch(void)
{
 git_oid their_oids[1];
 git_annotated_commit *their_head;
 git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
 int error;

 cl_git_pass(git_oid_fromstr(&their_oids[0], MERGE_BRANCH_OID));
 cl_git_pass(git_annotated_commit_lookup(&their_head, repo, &their_oids[0]));

 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 error = git_merge(repo, (const git_annotated_commit **)&their_head, 1, &merge_opts, &checkout_opts);

 git_annotated_commit_free(their_head);

 return error;
}
