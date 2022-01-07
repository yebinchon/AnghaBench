
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_8__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char const*) ;
 int git_checkout_tree (int ,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_path_exists (int ) ;
 int git_reference_name_to_id (int *,int ,char const*) ;
 int repo ;
 int repo_name ;

__attribute__((used)) static void test_checkout_fails(const char *refname, const char *filename)
{
 git_oid commit_id;
 git_commit *commit;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&path, repo_name, filename));

 cl_git_pass(git_reference_name_to_id(&commit_id, repo, refname));
 cl_git_pass(git_commit_lookup(&commit, repo, &commit_id));

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_fail(git_checkout_tree(repo, (const git_object *)commit, &opts));
 cl_assert(!git_path_exists(path.ptr));

 git_commit_free(commit);
 git_buf_dispose(&path);
}
