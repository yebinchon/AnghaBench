
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_wait {int inflight; } ;
struct rq_qos {int q; } ;
struct iolatency_grp {struct rq_wait rq_wait; } ;
struct TYPE_2__ {int use_delay; } ;


 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 int blkcg_schedule_throttle (int ,int) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int iolat_acquire_inflight ;
 int iolat_cleanup_cb ;
 TYPE_1__* lat_to_blkg (struct iolatency_grp*) ;
 int rq_qos_wait (struct rq_wait*,struct iolatency_grp*,int ,int ) ;

__attribute__((used)) static void __blkcg_iolatency_throttle(struct rq_qos *rqos,
           struct iolatency_grp *iolat,
           bool issue_as_root,
           bool use_memdelay)
{
 struct rq_wait *rqw = &iolat->rq_wait;
 unsigned use_delay = atomic_read(&lat_to_blkg(iolat)->use_delay);

 if (use_delay)
  blkcg_schedule_throttle(rqos->q, use_memdelay);
 if (issue_as_root || fatal_signal_pending(current)) {
  atomic_inc(&rqw->inflight);
  return;
 }

 rq_qos_wait(rqw, iolat, iolat_acquire_inflight, iolat_cleanup_cb);
}
