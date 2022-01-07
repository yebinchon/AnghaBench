
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir_notify_register (int *,int ,int *) ;
 int is_absolute_path (char const*) ;
 int set_git_dir_1 (char const*) ;
 int update_relative_gitdir ;

void set_git_dir(const char *path)
{
 set_git_dir_1(path);
 if (!is_absolute_path(path))
  chdir_notify_register(((void*)0), update_relative_gitdir, ((void*)0));
}
