
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_queue_data {unsigned int*** latency_buckets; int q; scalar_t__* latency_timeout; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 scalar_t__ HZ ;
 unsigned int KYBER_LATENCY_BUCKETS ;
 int KYBER_LATENCY_SHIFT ;
 scalar_t__ jiffies ;
 int * kyber_domain_names ;
 int * kyber_latency_type_names ;
 scalar_t__ max (scalar_t__,unsigned long) ;
 int memset (unsigned int*,int ,int) ;
 scalar_t__ time_is_after_jiffies (scalar_t__) ;
 int trace_kyber_latency (int ,int ,int ,unsigned int,unsigned int,int,unsigned int) ;

__attribute__((used)) static int calculate_percentile(struct kyber_queue_data *kqd,
    unsigned int sched_domain, unsigned int type,
    unsigned int percentile)
{
 unsigned int *buckets = kqd->latency_buckets[sched_domain][type];
 unsigned int bucket, samples = 0, percentile_samples;

 for (bucket = 0; bucket < KYBER_LATENCY_BUCKETS; bucket++)
  samples += buckets[bucket];

 if (!samples)
  return -1;





 if (!kqd->latency_timeout[sched_domain])
  kqd->latency_timeout[sched_domain] = max(jiffies + HZ, 1UL);
 if (samples < 500 &&
     time_is_after_jiffies(kqd->latency_timeout[sched_domain])) {
  return -1;
 }
 kqd->latency_timeout[sched_domain] = 0;

 percentile_samples = DIV_ROUND_UP(samples * percentile, 100);
 for (bucket = 0; bucket < KYBER_LATENCY_BUCKETS - 1; bucket++) {
  if (buckets[bucket] >= percentile_samples)
   break;
  percentile_samples -= buckets[bucket];
 }
 memset(buckets, 0, sizeof(kqd->latency_buckets[sched_domain][type]));

 trace_kyber_latency(kqd->q, kyber_domain_names[sched_domain],
       kyber_latency_type_names[type], percentile,
       bucket + 1, 1 << KYBER_LATENCY_SHIFT, samples);

 return bucket;
}
