
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ fifo_time; } ;
struct deadline_data {TYPE_1__* fifo_list; } ;
struct TYPE_2__ {int next; } ;


 int jiffies ;
 struct request* rq_entry_fifo (int ) ;
 scalar_t__ time_after_eq (int ,unsigned long) ;

__attribute__((used)) static inline int deadline_check_fifo(struct deadline_data *dd, int ddir)
{
 struct request *rq = rq_entry_fifo(dd->fifo_list[ddir].next);




 if (time_after_eq(jiffies, (unsigned long)rq->fifo_time))
  return 1;

 return 0;
}
