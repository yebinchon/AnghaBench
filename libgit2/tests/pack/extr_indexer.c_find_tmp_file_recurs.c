
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ S_ISDIR (int ) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,int ) ;
 int git_path_direach (TYPE_1__*,int ,int (*) (void*,TYPE_1__*),void*) ;
 int p_lstat_posixly (int ,struct stat*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int find_tmp_file_recurs(void *opaque, git_buf *path)
{
 int error = 0;
 git_buf *first_tmp_file = opaque;
 struct stat st;

 if ((error = p_lstat_posixly(path->ptr, &st)) < 0)
  return error;

 if (S_ISDIR(st.st_mode))
  return git_path_direach(path, 0, find_tmp_file_recurs, opaque);


 if (strstr(git_buf_cstr(path), "_git2_") != ((void*)0))
  return git_buf_sets(first_tmp_file, git_buf_cstr(path));

 return 0;
}
