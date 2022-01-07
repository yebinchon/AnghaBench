
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int dummy; } ;


 unsigned long jiffies ;
 scalar_t__ rwb_enabled (struct rq_wb*) ;

__attribute__((used)) static void wb_timestamp(struct rq_wb *rwb, unsigned long *var)
{
 if (rwb_enabled(rwb)) {
  const unsigned long cur = jiffies;

  if (cur != *var)
   *var = cur;
 }
}
