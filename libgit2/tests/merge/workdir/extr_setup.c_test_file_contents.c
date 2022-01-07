
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,char const*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 int git_repository_path (int ) ;
 int repo ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool test_file_contents(const char *filename, const char *expected)
{
 git_buf file_path_buf = GIT_BUF_INIT, file_buf = GIT_BUF_INIT;
 bool equals;

 git_buf_printf(&file_path_buf, "%s/%s", git_repository_path(repo), filename);

 cl_git_pass(git_futils_readbuffer(&file_buf, file_path_buf.ptr));
 equals = (strcmp(file_buf.ptr, expected) == 0);

 git_buf_dispose(&file_path_buf);
 git_buf_dispose(&file_buf);

 return equals;
}
