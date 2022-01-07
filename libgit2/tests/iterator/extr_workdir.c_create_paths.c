
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int) ;
 int git_buf_putc (TYPE_1__*,char) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_buf_truncate (TYPE_1__*,size_t) ;
 int p_mkdir (char*,int) ;

__attribute__((used)) static void create_paths(const char *root, int depth)
{
 git_buf fullpath = GIT_BUF_INIT;
 size_t root_len;
 int i;

 cl_git_pass(git_buf_puts(&fullpath, root));
 cl_git_pass(git_buf_putc(&fullpath, '/'));

 root_len = fullpath.size;

 for (i = 0; i < 8; i++) {
  bool file = (depth == 0 || (i % 2) == 0);
  git_buf_truncate(&fullpath, root_len);
  cl_git_pass(git_buf_printf(&fullpath, "item%d", i));

  if (file) {
   cl_git_rewritefile(fullpath.ptr, "This is a file!\n");
  } else {
   cl_must_pass(p_mkdir(fullpath.ptr, 0777));

   if (depth > 0)
    create_paths(fullpath.ptr, (depth - 1));
  }
 }

 git_buf_dispose(&fullpath);
}
