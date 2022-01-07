
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {scalar_t__ action; } ;


 scalar_t__ REPLAY_INTERACTIVE_REBASE ;

__attribute__((used)) static inline int is_rebase_i(const struct replay_opts *opts)
{
 return opts->action == REPLAY_INTERACTIVE_REBASE;
}
