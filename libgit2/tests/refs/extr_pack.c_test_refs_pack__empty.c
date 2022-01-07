
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_REFS_DIR_MODE ;
 int GIT_REFS_HEADS_DIR ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join_n (TYPE_1__*,char,int,int ,int ,char*) ;
 int git_futils_mkdir_r (int ,int ) ;
 int git_repository_path (int ) ;
 int packall () ;

void test_refs_pack__empty(void)
{

 git_buf temp_path = GIT_BUF_INIT;

 cl_git_pass(git_buf_join_n(&temp_path, '/', 3, git_repository_path(g_repo), GIT_REFS_HEADS_DIR, "empty_dir"));
 cl_git_pass(git_futils_mkdir_r(temp_path.ptr, GIT_REFS_DIR_MODE));
 git_buf_dispose(&temp_path);

 packall();
}
