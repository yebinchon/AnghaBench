
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {scalar_t__ action; } ;
struct commit {int dummy; } ;


 int GIT_REFLOG_ACTION ;
 scalar_t__ REPLAY_PICK ;
 int TODO_PICK ;
 int TODO_REVERT ;
 int action_name (struct replay_opts*) ;
 int do_pick_commit (struct repository*,int ,struct commit*,struct replay_opts*,int ,int*) ;
 int setenv (int ,int ,int ) ;

__attribute__((used)) static int single_pick(struct repository *r,
         struct commit *cmit,
         struct replay_opts *opts)
{
 int check_todo;

 setenv(GIT_REFLOG_ACTION, action_name(opts), 0);
 return do_pick_commit(r, opts->action == REPLAY_PICK ?
         TODO_PICK : TODO_REVERT, cmit, opts, 0,
         &check_todo);
}
