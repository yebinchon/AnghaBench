
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsb {int dummy; } ;


 unsigned long sysctl_tsb_ratio ;

__attribute__((used)) static unsigned long tsb_size_to_rss_limit(unsigned long new_size)
{
 unsigned long num_ents = (new_size / sizeof(struct tsb));

 if (sysctl_tsb_ratio < 0)
  return num_ents - (num_ents >> -sysctl_tsb_ratio);
 else
  return num_ents + (num_ents >> sysctl_tsb_ratio);
}
