
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct hd_struct {scalar_t__ partno; } ;
struct TYPE_2__ {struct hd_struct part0; } ;


 int * in_flight ;
 int part_stat_local_dec (struct hd_struct*,int ) ;
 TYPE_1__* part_to_disk (struct hd_struct*) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;

void part_dec_in_flight(struct request_queue *q, struct hd_struct *part, int rw)
{
 if (queue_is_mq(q))
  return;

 part_stat_local_dec(part, in_flight[rw]);
 if (part->partno)
  part_stat_local_dec(&part_to_disk(part)->part0, in_flight[rw]);
}
