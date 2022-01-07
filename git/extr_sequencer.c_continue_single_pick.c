
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int RUN_GIT_CMD ;
 int _ (char*) ;
 int error (int ) ;
 int file_exists (int ) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 int run_command_v_opt (char const**,int ) ;

__attribute__((used)) static int continue_single_pick(struct repository *r)
{
 const char *argv[] = { "commit", ((void*)0) };

 if (!file_exists(git_path_cherry_pick_head(r)) &&
     !file_exists(git_path_revert_head(r)))
  return error(_("no cherry-pick or revert in progress"));
 return run_command_v_opt(argv, RUN_GIT_CMD);
}
