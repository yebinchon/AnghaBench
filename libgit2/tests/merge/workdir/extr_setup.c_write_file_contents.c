
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_rewritefile (int ,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,char const*) ;
 int git_repository_path (int ) ;
 int repo ;

__attribute__((used)) static void write_file_contents(const char *filename, const char *output)
{
 git_buf file_path_buf = GIT_BUF_INIT;

 git_buf_printf(&file_path_buf, "%s/%s", git_repository_path(repo),
  filename);
 cl_git_rewritefile(file_path_buf.ptr, output);

 git_buf_dispose(&file_path_buf);
}
