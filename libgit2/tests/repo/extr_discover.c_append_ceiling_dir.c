
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 char GIT_PATH_LIST_SEPARATOR ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_path_prettify_dir (TYPE_1__*,char const*,int *) ;

__attribute__((used)) static void append_ceiling_dir(git_buf *ceiling_dirs, const char *path)
{
 git_buf pretty_path = GIT_BUF_INIT;
 char ceiling_separator[2] = { GIT_PATH_LIST_SEPARATOR, '\0' };

 cl_git_pass(git_path_prettify_dir(&pretty_path, path, ((void*)0)));

 if (ceiling_dirs->size > 0)
  git_buf_puts(ceiling_dirs, ceiling_separator);

 git_buf_puts(ceiling_dirs, pretty_path.ptr);

 git_buf_dispose(&pretty_path);
 cl_assert(git_buf_oom(ceiling_dirs) == 0);
}
