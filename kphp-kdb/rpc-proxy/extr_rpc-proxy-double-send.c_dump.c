
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; int utime; int port; int ip; } ;
struct double_receive {int qid; TYPE_1__ PID; } ;


 int vkprintf (int,char*,int ,int ,int ,int ,int ,struct double_receive*) ;

void dump (struct double_receive *s) {
  vkprintf (2, "DUMP: PID: %u.%d.%d.%d, qid = %lld, %p\n", s->PID.ip, s->PID.port, s->PID.utime, s->PID.pid, s->qid, s);
}
