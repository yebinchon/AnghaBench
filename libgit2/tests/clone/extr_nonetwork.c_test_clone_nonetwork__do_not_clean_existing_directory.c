
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bare; } ;


 int GIT_DIR_MODE ;
 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 TYPE_1__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_1__*) ;
 int git_path_is_empty_dir (char*) ;
 int p_mkdir (char*,int ) ;

void test_clone_nonetwork__do_not_clean_existing_directory(void)
{


 p_mkdir("./foo", GIT_DIR_MODE);
 cl_git_fail(git_clone(&g_repo, "not_a_repo", "./foo", &g_options));
 cl_assert(git_path_is_empty_dir("./foo"));


 g_options.bare = 1;
 cl_git_fail(git_clone(&g_repo, "not_a_repo", "./foo", &g_options));
 cl_assert(git_path_is_empty_dir("./foo"));
}
