
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* h; int * remote_pid; } ;
struct TYPE_3__ {int qid; } ;


 TYPE_2__* CQ ;
 int SKIP_ALL_BYTES ;
 int assert (int) ;
 int double_receive_add (int ,int ) ;
 int vkprintf (int,char*) ;

int double_receive_on_receive (void) {
  int t = double_receive_add (*CQ->remote_pid, CQ->h->qid);
  assert (t >= 0);
  if (!t) {
    vkprintf (2, "Duplicate query. Skipping.");
    return SKIP_ALL_BYTES;
  }
  return 0;
}
