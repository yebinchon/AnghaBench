
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
struct TYPE_9__ {char* checkout_branch; int remote_cb; } ;
typedef TYPE_2__ git_clone_options ;


 TYPE_2__ GIT_CLONE_OPTIONS_INIT ;
 int REFSPEC ;
 int URL ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__prefixcmp (int ,char*) ;
 int git_clone (int **,int ,char*,TYPE_2__*) ;
 int git_reference_list (TYPE_1__*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 int git_remote_lookup (int **,int *,char*) ;
 int git_repository_free (int *) ;
 int git_strarray_free (TYPE_1__*) ;
 int remote_single_branch ;

void test_online_remotes__single_branch(void)
{
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 git_repository *repo;
 git_remote *remote;
 git_strarray refs;
 size_t i, count = 0;

 opts.remote_cb = remote_single_branch;
 opts.checkout_branch = "first-merge";

 cl_git_pass(git_clone(&repo, URL, "./single-branch", &opts));
 cl_git_pass(git_reference_list(&refs, repo));

 for (i = 0; i < refs.count; i++) {
  if (!git__prefixcmp(refs.strings[i], "refs/heads/"))
   count++;
 }
 cl_assert_equal_i(1, count);

 git_strarray_free(&refs);

 cl_git_pass(git_remote_lookup(&remote, repo, "origin"));
 cl_git_pass(git_remote_get_fetch_refspecs(&refs, remote));

 cl_assert_equal_i(1, refs.count);
 cl_assert_equal_s(REFSPEC, refs.strings[0]);

 git_strarray_free(&refs);
 git_remote_free(remote);
 git_repository_free(repo);
}
