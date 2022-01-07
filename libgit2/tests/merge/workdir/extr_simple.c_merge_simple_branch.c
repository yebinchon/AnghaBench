
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_7__ {int file_favor; } ;
typedef TYPE_1__ git_merge_options ;
struct TYPE_8__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;
typedef int git_annotated_commit ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int THEIRS_SIMPLE_OID ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_merge (int ,int const**,int,TYPE_1__*,TYPE_2__*) ;
 int git_oid_fromstr (int *,int ) ;
 int repo ;

__attribute__((used)) static void merge_simple_branch(int merge_file_favor, int addl_checkout_strategy)
{
 git_oid their_oids[1];
 git_annotated_commit *their_heads[1];
 git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_pass(git_oid_fromstr(&their_oids[0], THEIRS_SIMPLE_OID));
 cl_git_pass(git_annotated_commit_lookup(&their_heads[0], repo, &their_oids[0]));

 merge_opts.file_favor = merge_file_favor;
 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_ALLOW_CONFLICTS |
  addl_checkout_strategy;

 cl_git_pass(git_merge(repo, (const git_annotated_commit **)their_heads, 1, &merge_opts, &checkout_opts));

 git_annotated_commit_free(their_heads[0]);
}
