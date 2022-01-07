
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {int dummy; } ;
struct si_sm_data {int BT_CAP_req2rsp; int BT_CAP_retries; void* complete; void* state; scalar_t__ seq; struct si_sm_io* io; } ;


 int BT_NORMAL_RETRY_LIMIT ;
 int BT_NORMAL_TIMEOUT ;
 void* BT_STATE_IDLE ;
 int USEC_PER_SEC ;
 int memset (struct si_sm_data*,int ,int) ;

__attribute__((used)) static unsigned int bt_init_data(struct si_sm_data *bt, struct si_sm_io *io)
{
 memset(bt, 0, sizeof(struct si_sm_data));
 if (bt->io != io) {

  bt->io = io;
  bt->seq = 0;
 }
 bt->state = BT_STATE_IDLE;
 bt->complete = BT_STATE_IDLE;
 bt->BT_CAP_req2rsp = BT_NORMAL_TIMEOUT * USEC_PER_SEC;
 bt->BT_CAP_retries = BT_NORMAL_RETRY_LIMIT;
 return 3;
}
