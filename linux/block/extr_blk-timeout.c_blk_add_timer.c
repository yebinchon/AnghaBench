
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long expires; } ;
struct request_queue {TYPE_1__ timeout; int rq_timeout; } ;
struct request {int deadline; int timeout; int rq_flags; struct request_queue* q; } ;


 int HZ ;
 int RQF_TIMED_OUT ;
 int WRITE_ONCE (int ,unsigned long) ;
 unsigned long blk_rq_timeout (int ) ;
 int jiffies ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 int round_jiffies_up (unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int timer_pending (TYPE_1__*) ;

void blk_add_timer(struct request *req)
{
 struct request_queue *q = req->q;
 unsigned long expiry;





 if (!req->timeout)
  req->timeout = q->rq_timeout;

 req->rq_flags &= ~RQF_TIMED_OUT;

 expiry = jiffies + req->timeout;
 WRITE_ONCE(req->deadline, expiry);






 expiry = blk_rq_timeout(round_jiffies_up(expiry));

 if (!timer_pending(&q->timeout) ||
     time_before(expiry, q->timeout.expires)) {
  unsigned long diff = q->timeout.expires - expiry;
  if (!timer_pending(&q->timeout) || (diff >= HZ / 2))
   mod_timer(&q->timeout, expiry);
 }

}
