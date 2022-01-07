
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int S_ISDIR (int ) ;
 int cl_assert (int) ;
 int cl_must_pass (int ) ;
 char* clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_set (TYPE_1__*,char const*,int) ;
 int git_path_root (char const*) ;
 int p_stat (int ,struct stat*) ;

void test_core_stat__root(void)
{
 const char *sandbox = clar_sandbox_path();
 git_buf root = GIT_BUF_INIT;
 int root_len;
 struct stat st;

 root_len = git_path_root(sandbox);
 cl_assert(root_len >= 0);

 git_buf_set(&root, sandbox, root_len+1);

 cl_must_pass(p_stat(root.ptr, &st));
 cl_assert(S_ISDIR(st.st_mode));

 git_buf_dispose(&root);
}
