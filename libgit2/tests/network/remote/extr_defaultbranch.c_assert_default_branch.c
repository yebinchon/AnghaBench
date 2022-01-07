
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_DIRECTION_FETCH ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int g_remote ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_remote_connect (int ,int ,int *,int *,int *) ;
 int git_remote_default_branch (TYPE_1__*,int ) ;

__attribute__((used)) static void assert_default_branch(const char *should)
{
 git_buf name = GIT_BUF_INIT;

 cl_git_pass(git_remote_connect(g_remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_git_pass(git_remote_default_branch(&name, g_remote));
 cl_assert_equal_s(should, name.ptr);
 git_buf_dispose(&name);
}
