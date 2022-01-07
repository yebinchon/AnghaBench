
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int default_msg_cleanup; } ;


 int COMMIT_MSG_CLEANUP_NONE ;
 int git_config (int ,struct replay_opts*) ;
 int git_sequencer_config ;

void sequencer_init_config(struct replay_opts *opts)
{
 opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_NONE;
 git_config(git_sequencer_config, opts);
}
