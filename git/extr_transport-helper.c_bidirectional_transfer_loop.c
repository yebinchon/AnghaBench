
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dest; int dest_is_sock; char* src_name; char* dest_name; scalar_t__ bufuse; void* state; scalar_t__ src_is_sock; scalar_t__ src; } ;
struct TYPE_3__ {int src; int dest; int src_is_sock; char* src_name; char* dest_name; scalar_t__ bufuse; void* state; scalar_t__ dest_is_sock; } ;
struct bidirectional_transfer_state {TYPE_2__ gtp; TYPE_1__ ptg; } ;


 void* SSTATE_TRANSFERRING ;
 int tloop_spawnwait_tasks (struct bidirectional_transfer_state*) ;

int bidirectional_transfer_loop(int input, int output)
{
 struct bidirectional_transfer_state state;


 state.ptg.src = input;
 state.ptg.dest = 1;
 state.ptg.src_is_sock = (input == output);
 state.ptg.dest_is_sock = 0;
 state.ptg.state = SSTATE_TRANSFERRING;
 state.ptg.bufuse = 0;
 state.ptg.src_name = "remote input";
 state.ptg.dest_name = "stdout";

 state.gtp.src = 0;
 state.gtp.dest = output;
 state.gtp.src_is_sock = 0;
 state.gtp.dest_is_sock = (input == output);
 state.gtp.state = SSTATE_TRANSFERRING;
 state.gtp.bufuse = 0;
 state.gtp.src_name = "stdin";
 state.gtp.dest_name = "remote output";

 return tloop_spawnwait_tasks(&state);
}
