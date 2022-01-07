
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {unsigned int sample_delay_ns; } ;


 unsigned int NSEC_PER_USEC ;

__attribute__((used)) static inline void gov_update_sample_delay(struct policy_dbs_info *policy_dbs,
        unsigned int delay_us)
{
 policy_dbs->sample_delay_ns = delay_us * NSEC_PER_USEC;
}
