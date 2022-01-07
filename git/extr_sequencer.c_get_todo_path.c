
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int dummy; } ;


 char const* git_path_todo_file () ;
 scalar_t__ is_rebase_i (struct replay_opts const*) ;
 char const* rebase_path_todo () ;

__attribute__((used)) static const char *get_todo_path(const struct replay_opts *opts)
{
 if (is_rebase_i(opts))
  return rebase_path_todo();
 return git_path_todo_file();
}
