
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_nlink; } ;
typedef int git_repository ;
struct TYPE_9__ {int bare; void* local; } ;
typedef TYPE_1__ git_clone_options ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 void* GIT_CLONE_LOCAL ;
 void* GIT_CLONE_LOCAL_NO_LINKS ;
 TYPE_1__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert_equal_i (int,int ) ;
 char* cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 char* cl_git_path_url (char*) ;
 int git_buf_clear (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_join_n (TYPE_2__*,char,int,int ,char*,char*,char*) ;
 int git_clone (int **,char*,char*,TYPE_1__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_repository_free (int *) ;
 int git_repository_path (int *) ;
 int p_stat (int ,struct stat*) ;

void test_clone_local__hardlinks(void)
{
 git_repository *repo;
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 git_buf buf = GIT_BUF_INIT;
 struct stat st;






 opts.bare = 1;
 opts.local = GIT_CLONE_LOCAL_NO_LINKS;
 cl_git_pass(git_clone(&repo, cl_fixture("testrepo.git"), "./clone.git", &opts));
 git_repository_free(repo);



 opts.local = GIT_CLONE_LOCAL;
 cl_git_pass(git_clone(&repo, cl_git_path_url("clone.git"), "./clone2.git", &opts));


 git_buf_clear(&buf);
 cl_git_pass(git_buf_join_n(&buf, '/', 4, git_repository_path(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

 cl_git_pass(p_stat(buf.ptr, &st));
 cl_assert_equal_i(2, st.st_nlink);


 git_repository_free(repo);
 git_buf_clear(&buf);

 opts.local = GIT_CLONE_LOCAL_NO_LINKS;
 cl_git_pass(git_clone(&repo, cl_git_path_url("clone.git"), "./clone3.git", &opts));

 git_buf_clear(&buf);
 cl_git_pass(git_buf_join_n(&buf, '/', 4, git_repository_path(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

 cl_git_pass(p_stat(buf.ptr, &st));
 cl_assert_equal_i(1, st.st_nlink);

 git_repository_free(repo);


 cl_git_pass(git_clone(&repo, "./clone.git", "./clone4.git", ((void*)0)));


 git_buf_clear(&buf);
 cl_git_pass(git_buf_join_n(&buf, '/', 4, git_repository_path(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

 cl_git_pass(p_stat(buf.ptr, &st));
 cl_assert_equal_i(3, st.st_nlink);


 git_buf_dispose(&buf);
 git_repository_free(repo);

 cl_git_pass(git_futils_rmdir_r("./clone.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_futils_rmdir_r("./clone2.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_futils_rmdir_r("./clone3.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_futils_rmdir_r("./clone4.git", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
