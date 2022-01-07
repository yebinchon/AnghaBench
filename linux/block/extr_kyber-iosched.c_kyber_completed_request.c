
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct request {scalar_t__ io_start_time_ns; scalar_t__ start_time_ns; int cmd_flags; TYPE_2__* q; } ;
struct kyber_queue_data {int timer; int cpu_latency; scalar_t__* latency_targets; } ;
struct kyber_cpu_latency {int dummy; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct kyber_queue_data* elevator_data; } ;


 int HZ ;
 int KYBER_IO_LATENCY ;
 unsigned int KYBER_OTHER ;
 int KYBER_TOTAL_LATENCY ;
 int add_latency_sample (struct kyber_cpu_latency*,unsigned int,int ,scalar_t__,scalar_t__) ;
 struct kyber_cpu_latency* get_cpu_ptr (int ) ;
 scalar_t__ jiffies ;
 unsigned int kyber_sched_domain (int ) ;
 int put_cpu_ptr (int ) ;
 int timer_reduce (int *,scalar_t__) ;

__attribute__((used)) static void kyber_completed_request(struct request *rq, u64 now)
{
 struct kyber_queue_data *kqd = rq->q->elevator->elevator_data;
 struct kyber_cpu_latency *cpu_latency;
 unsigned int sched_domain;
 u64 target;

 sched_domain = kyber_sched_domain(rq->cmd_flags);
 if (sched_domain == KYBER_OTHER)
  return;

 cpu_latency = get_cpu_ptr(kqd->cpu_latency);
 target = kqd->latency_targets[sched_domain];
 add_latency_sample(cpu_latency, sched_domain, KYBER_TOTAL_LATENCY,
      target, now - rq->start_time_ns);
 add_latency_sample(cpu_latency, sched_domain, KYBER_IO_LATENCY, target,
      now - rq->io_start_time_ns);
 put_cpu_ptr(kqd->cpu_latency);

 timer_reduce(&kqd->timer, jiffies + HZ / 10);
}
