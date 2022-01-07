
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int cl_assert (char*) ;
 int cl_git_pass (int ) ;
 int clar_sandbox_path () ;
 int git_buf_attach (TYPE_1__*,char*,int ) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 char* p_realpath (int ,int *) ;

__attribute__((used)) static char *sandbox_path(git_buf *buf, const char *suffix)
{
 char *path = p_realpath(clar_sandbox_path(), ((void*)0));
 cl_assert(path);
 cl_git_pass(git_buf_attach(buf, path, 0));
 cl_git_pass(git_buf_joinpath(buf, buf->ptr, suffix));
 return buf->ptr;
}
