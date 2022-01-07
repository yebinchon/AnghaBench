
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* action ) (int,int,int,int,struct nlm_fmn_msg*,void*) ;void* arg; } ;


 TYPE_1__* msg_handlers ;
 int pr_debug (char*,int,int) ;
 int smp_wmb () ;

int nlm_register_fmn_handler(int start_stnid, int end_stnid,
 void (*action)(int, int, int, int, struct nlm_fmn_msg *, void *),
 void *arg)
{
 int sstnid;

 for (sstnid = start_stnid; sstnid <= end_stnid; sstnid++) {
  msg_handlers[sstnid].arg = arg;
  smp_wmb();
  msg_handlers[sstnid].action = action;
 }
 pr_debug("Registered FMN msg handler for stnid %d-%d\n",
   start_stnid, end_stnid);
 return 0;
}
