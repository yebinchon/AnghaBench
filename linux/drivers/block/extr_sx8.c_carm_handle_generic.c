
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_request {int dummy; } ;
struct carm_host {int state; int fsm_task; } ;
typedef scalar_t__ blk_status_t ;


 int DPRINTK (char*) ;
 int HST_ERROR ;
 int assert (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void carm_handle_generic(struct carm_host *host,
    struct carm_request *crq, blk_status_t error,
    int cur_state, int next_state)
{
 DPRINTK("ENTER\n");

 assert(host->state == cur_state);
 if (error)
  host->state = HST_ERROR;
 else
  host->state = next_state;
 schedule_work(&host->fsm_task);
}
