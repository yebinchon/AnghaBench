
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wait {int wait; int inflight; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void iolat_cleanup_cb(struct rq_wait *rqw, void *private_data)
{
 atomic_dec(&rqw->inflight);
 wake_up(&rqw->wait);
}
