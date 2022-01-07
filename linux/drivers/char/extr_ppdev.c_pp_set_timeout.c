
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pardevice {long timeout; } ;


 int EINVAL ;
 long HZ ;
 long usecs_to_jiffies (int) ;

__attribute__((used)) static int pp_set_timeout(struct pardevice *pdev, long tv_sec, int tv_usec)
{
 long to_jiffies;

 if ((tv_sec < 0) || (tv_usec < 0))
  return -EINVAL;

 to_jiffies = usecs_to_jiffies(tv_usec);
 to_jiffies += tv_sec * HZ;
 if (to_jiffies <= 0)
  return -EINVAL;

 pdev->timeout = to_jiffies;
 return 0;
}
