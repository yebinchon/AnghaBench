
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* filename; int filename_len; } ;
typedef TYPE_1__ remove_data ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_sets (int *,char const*) ;
 int git_path_isdir (char const*) ;
 int remove_placeholders_recurs (TYPE_1__*,int *) ;
 int strlen (char const*) ;

int cl_git_remove_placeholders(const char *directory_path, const char *filename)
{
 int error;
 remove_data data;
 git_buf buffer = GIT_BUF_INIT;

 if (git_path_isdir(directory_path) == 0)
  return -1;

 if (git_buf_sets(&buffer, directory_path) < 0)
  return -1;

 data.filename = filename;
 data.filename_len = strlen(filename);

 error = remove_placeholders_recurs(&data, &buffer);

 git_buf_dispose(&buffer);

 return error;
}
