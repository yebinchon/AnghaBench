
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_struct {scalar_t__ partno; int stamp; } ;
struct TYPE_2__ {struct hd_struct part0; } ;


 unsigned long READ_ONCE (int ) ;
 int __part_stat_add (struct hd_struct*,int ,int) ;
 unsigned long cmpxchg (int *,unsigned long,unsigned long) ;
 int io_ticks ;
 scalar_t__ likely (int) ;
 TYPE_1__* part_to_disk (struct hd_struct*) ;
 scalar_t__ unlikely (int) ;

void update_io_ticks(struct hd_struct *part, unsigned long now)
{
 unsigned long stamp;
again:
 stamp = READ_ONCE(part->stamp);
 if (unlikely(stamp != now)) {
  if (likely(cmpxchg(&part->stamp, stamp, now) == stamp)) {
   __part_stat_add(part, io_ticks, 1);
  }
 }
 if (part->partno) {
  part = &part_to_disk(part)->part0;
  goto again;
 }
}
