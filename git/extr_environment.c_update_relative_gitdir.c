
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int get_git_dir () ;
 char* reparent_relative_path (char const*,char const*,int ) ;
 int set_git_dir_1 (char*) ;
 int trace_printf_key (int *,char*,char*) ;
 int trace_setup_key ;

__attribute__((used)) static void update_relative_gitdir(const char *name,
       const char *old_cwd,
       const char *new_cwd,
       void *data)
{
 char *path = reparent_relative_path(old_cwd, new_cwd, get_git_dir());
 trace_printf_key(&trace_setup_key,
    "setup: move $GIT_DIR to '%s'",
    path);
 set_git_dir_1(path);
 free(path);
}
