
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int message; } ;
struct TYPE_6__ {TYPE_1__ error_msg; int oom; } ;
typedef TYPE_2__ git_error_state ;


 int git__free (int ) ;
 int memset (TYPE_2__*,int ,int) ;

void git_error_state_free(git_error_state *state)
{
 if (!state)
  return;

 if (!state->oom)
  git__free(state->error_msg.message);

 memset(state, 0, sizeof(git_error_state));
}
