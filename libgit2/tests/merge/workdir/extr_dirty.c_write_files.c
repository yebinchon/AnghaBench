
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int TEST_REPO_PATH ;
 int cl_git_mkfile (int ,int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char*,...) ;

__attribute__((used)) static void write_files(char *files[])
{
 char *filename;
 git_buf path = GIT_BUF_INIT, content = GIT_BUF_INIT;
 size_t i;

 for (i = 0, filename = files[i]; filename; filename = files[++i]) {
  git_buf_clear(&path);
  git_buf_clear(&content);

  git_buf_printf(&path, "%s/%s", TEST_REPO_PATH, filename);
  git_buf_printf(&content, "This is a dirty file in the working directory!\n\n"
   "It will not be staged!  Its filename is %s.\n", filename);

  cl_git_mkfile(path.ptr, content.ptr);
 }

 git_buf_dispose(&path);
 git_buf_dispose(&content);
}
