
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ last_comp; scalar_t__ last_issue; } ;


 int HZ ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long const,scalar_t__) ;

__attribute__((used)) static bool close_io(struct rq_wb *rwb)
{
 const unsigned long now = jiffies;

 return time_before(now, rwb->last_issue + HZ / 10) ||
  time_before(now, rwb->last_comp + HZ / 10);
}
