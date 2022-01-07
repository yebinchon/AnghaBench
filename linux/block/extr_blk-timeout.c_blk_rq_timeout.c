
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLK_MAX_TIMEOUT ;
 scalar_t__ jiffies ;
 unsigned long round_jiffies_up (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

unsigned long blk_rq_timeout(unsigned long timeout)
{
 unsigned long maxt;

 maxt = round_jiffies_up(jiffies + BLK_MAX_TIMEOUT);
 if (time_after(timeout, maxt))
  timeout = maxt;

 return timeout;
}
