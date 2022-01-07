
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_path_join_unrooted (int *,char const*,char const*,int *) ;
 int git_sysdir_expand_global_file (int *,char const*) ;

__attribute__((used)) static int included_path(git_buf *out, const char *dir, const char *path)
{

 if (path[0] == '~' && path[1] == '/')
  return git_sysdir_expand_global_file(out, &path[1]);

 return git_path_join_unrooted(out, path, dir, ((void*)0));
}
