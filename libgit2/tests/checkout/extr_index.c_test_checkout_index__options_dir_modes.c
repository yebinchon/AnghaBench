
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; int dir_mode; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 int GIT_FILEMODE_TREE ;
 int S_IFMT ;
 int cl_assert_equal_i_fmt (int,int,char*) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int p_stat (char*,struct stat*) ;
 int p_umask (int) ;
 int reset_index_to_treeish (int *) ;

void test_checkout_index__options_dir_modes(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 struct stat st;
 git_oid oid;
 git_commit *commit;
 mode_t um;

 if (!cl_is_chmod_supported())
  return;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &oid));

 reset_index_to_treeish((git_object *)commit);

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
 opts.dir_mode = 0701;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));


 (void)p_umask(um = p_umask(022));

 cl_git_pass(p_stat("./testrepo/a", &st));

 cl_assert_equal_i_fmt(st.st_mode & (S_IFMT | 07777), (GIT_FILEMODE_TREE | 0701) & ~um, "%07o");


 cl_git_pass(p_stat("./testrepo/a/b.txt", &st));
 cl_assert_equal_i_fmt(st.st_mode & (S_IFMT | 07777), GIT_FILEMODE_BLOB_EXECUTABLE & ~um, "%07o");

 git_commit_free(commit);
}
