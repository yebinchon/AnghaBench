
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* path; int id; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
struct TYPE_12__ {size_t size; char* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEMODE_BLOB ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_printf (TYPE_2__*,char*,int) ;
 int git_buf_putc (TYPE_2__*,char) ;
 int git_buf_puts (TYPE_2__*,char const*) ;
 int git_buf_truncate (TYPE_2__*,size_t) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_oid_fromstr (int *,char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void create_paths(git_index *index, const char *root, int depth)
{
 git_buf fullpath = GIT_BUF_INIT;
 git_index_entry entry;
 size_t root_len;
 int i;

 if (root) {
  cl_git_pass(git_buf_puts(&fullpath, root));
  cl_git_pass(git_buf_putc(&fullpath, '/'));
 }

 root_len = fullpath.size;

 for (i = 0; i < 8; i++) {
  bool file = (depth == 0 || (i % 2) == 0);
  git_buf_truncate(&fullpath, root_len);
  cl_git_pass(git_buf_printf(&fullpath, "item%d", i));

  if (file) {
   memset(&entry, 0, sizeof(git_index_entry));
   entry.path = fullpath.ptr;
   entry.mode = GIT_FILEMODE_BLOB;
   git_oid_fromstr(&entry.id, "d44e18fb93b7107b5cd1b95d601591d77869a1b6");

   cl_git_pass(git_index_add(index, &entry));
  } else if (depth > 0) {
   create_paths(index, fullpath.ptr, (depth - 1));
  }
 }

 git_buf_dispose(&fullpath);
}
