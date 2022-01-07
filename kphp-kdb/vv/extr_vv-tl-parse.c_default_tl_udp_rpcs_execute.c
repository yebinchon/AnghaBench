
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_msg {TYPE_1__* S; } ;
struct TYPE_2__ {int PID; } ;


 int * TL_IN_PID ;
 int WaitAioArrClear () ;
 int tl_query_act_udp (struct udp_msg*) ;

int default_tl_udp_rpcs_execute (struct udp_msg *msg) {
  WaitAioArrClear ();
  TL_IN_PID = &msg->S->PID;
  tl_query_act_udp (msg);
  return 0;
}
