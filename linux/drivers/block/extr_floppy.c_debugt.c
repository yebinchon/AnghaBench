
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DEBUGT ;
 TYPE_1__* DP ;
 scalar_t__ debugtimer ;
 scalar_t__ jiffies ;
 int pr_info (char*,char const*,char const*,scalar_t__) ;

__attribute__((used)) static inline void debugt(const char *func, const char *msg)
{
 if (DP->flags & DEBUGT)
  pr_info("%s:%s dtime=%lu\n", func, msg, jiffies - debugtimer);
}
