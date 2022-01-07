
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_path_prettify (int *,char const*,char const*) ;
 int git_path_to_dir (int *) ;

int git_path_prettify_dir(git_buf *path_out, const char *path, const char *base)
{
 int error = git_path_prettify(path_out, path, base);
 return (error < 0) ? error : git_path_to_dir(path_out);
}
