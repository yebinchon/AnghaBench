
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct hd_struct {int dummy; } ;


 unsigned long jiffies ;
 unsigned long jiffies_to_nsecs (unsigned long) ;
 int * nsecs ;
 int op_is_write (int) ;
 int op_stat_group (int) ;
 int part_dec_in_flight (struct request_queue*,struct hd_struct*,int ) ;
 int part_stat_add (struct hd_struct*,int ,unsigned long) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int time_in_queue ;
 int update_io_ticks (struct hd_struct*,unsigned long) ;

void generic_end_io_acct(struct request_queue *q, int req_op,
    struct hd_struct *part, unsigned long start_time)
{
 unsigned long now = jiffies;
 unsigned long duration = now - start_time;
 const int sgrp = op_stat_group(req_op);

 part_stat_lock();

 update_io_ticks(part, now);
 part_stat_add(part, nsecs[sgrp], jiffies_to_nsecs(duration));
 part_stat_add(part, time_in_queue, duration);
 part_dec_in_flight(q, part, op_is_write(req_op));

 part_stat_unlock();
}
