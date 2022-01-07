
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_queue_data {unsigned int*** latency_buckets; } ;
struct kyber_cpu_latency {int *** buckets; } ;
typedef int atomic_t ;


 unsigned int KYBER_LATENCY_BUCKETS ;
 scalar_t__ atomic_xchg (int *,int ) ;

__attribute__((used)) static void flush_latency_buckets(struct kyber_queue_data *kqd,
      struct kyber_cpu_latency *cpu_latency,
      unsigned int sched_domain, unsigned int type)
{
 unsigned int *buckets = kqd->latency_buckets[sched_domain][type];
 atomic_t *cpu_buckets = cpu_latency->buckets[sched_domain][type];
 unsigned int bucket;

 for (bucket = 0; bucket < KYBER_LATENCY_BUCKETS; bucket++)
  buckets[bucket] += atomic_xchg(&cpu_buckets[bucket], 0);
}
