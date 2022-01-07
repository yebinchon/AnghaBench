
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_16__ {scalar_t__ size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_COMMONDIR_FILE ;
 int GIT_HEAD_FILE ;
 int GIT_OBJECTS_DIR ;
 int GIT_REFS_DIR ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,int ) ;
 int git_buf_putc (TYPE_1__*,char) ;
 scalar_t__ git_buf_rfind (TYPE_1__*,char) ;
 int git_buf_rtrim (TYPE_1__*) ;
 int git_buf_set (TYPE_1__*,int ,scalar_t__) ;
 int git_buf_swap (TYPE_1__*,TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 int git_path_contains_dir (TYPE_1__*,int ) ;
 int git_path_contains_file (TYPE_1__*,int ) ;
 scalar_t__ git_path_is_relative (int ) ;

__attribute__((used)) static bool valid_repository_path(git_buf *repository_path, git_buf *common_path)
{


 if (git_path_contains_file(repository_path, GIT_COMMONDIR_FILE)) {
  git_buf common_link = GIT_BUF_INIT;
  git_buf_joinpath(&common_link, repository_path->ptr, GIT_COMMONDIR_FILE);

  git_futils_readbuffer(&common_link, common_link.ptr);
  git_buf_rtrim(&common_link);

  if (git_path_is_relative(common_link.ptr)) {
   git_buf_joinpath(common_path, repository_path->ptr, common_link.ptr);
  } else {
   git_buf_swap(common_path, &common_link);
  }

  git_buf_dispose(&common_link);
 }
 else {
  git_buf_set(common_path, repository_path->ptr, repository_path->size);
 }


 if (git_buf_rfind(common_path, '/') != (ssize_t)common_path->size - 1)
  git_buf_putc(common_path, '/');


 if (git_path_contains_file(repository_path, GIT_HEAD_FILE) == 0)
  return 0;


 if (git_path_contains_dir(common_path, GIT_OBJECTS_DIR) == 0)
  return 0;
 if (git_path_contains_dir(common_path, GIT_REFS_DIR) == 0)
  return 0;

 return 1;
}
