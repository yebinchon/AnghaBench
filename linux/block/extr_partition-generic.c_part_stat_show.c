
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct hd_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct request_queue* queue; } ;


 size_t STAT_DISCARD ;
 size_t STAT_READ ;
 size_t STAT_WRITE ;
 struct hd_struct* dev_to_part (struct device*) ;
 int io_ticks ;
 int * ios ;
 int jiffies_to_msecs (int) ;
 int * merges ;
 unsigned int part_in_flight (struct request_queue*,struct hd_struct*) ;
 int part_stat_read (struct hd_struct*,int ) ;
 scalar_t__ part_stat_read_msecs (struct hd_struct*,size_t) ;
 TYPE_1__* part_to_disk (struct hd_struct*) ;
 int * sectors ;
 int sprintf (char*,char*,int,int,unsigned long long,unsigned int,int,int,unsigned long long,unsigned int,unsigned int,int ,int ,int,int,unsigned long long,unsigned int) ;
 int time_in_queue ;

ssize_t part_stat_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct hd_struct *p = dev_to_part(dev);
 struct request_queue *q = part_to_disk(p)->queue;
 unsigned int inflight;

 inflight = part_in_flight(q, p);
 return sprintf(buf,
  "%8lu %8lu %8llu %8u "
  "%8lu %8lu %8llu %8u "
  "%8u %8u %8u "
  "%8lu %8lu %8llu %8u"
  "\n",
  part_stat_read(p, ios[STAT_READ]),
  part_stat_read(p, merges[STAT_READ]),
  (unsigned long long)part_stat_read(p, sectors[STAT_READ]),
  (unsigned int)part_stat_read_msecs(p, STAT_READ),
  part_stat_read(p, ios[STAT_WRITE]),
  part_stat_read(p, merges[STAT_WRITE]),
  (unsigned long long)part_stat_read(p, sectors[STAT_WRITE]),
  (unsigned int)part_stat_read_msecs(p, STAT_WRITE),
  inflight,
  jiffies_to_msecs(part_stat_read(p, io_ticks)),
  jiffies_to_msecs(part_stat_read(p, time_in_queue)),
  part_stat_read(p, ios[STAT_DISCARD]),
  part_stat_read(p, merges[STAT_DISCARD]),
  (unsigned long long)part_stat_read(p, sectors[STAT_DISCARD]),
  (unsigned int)part_stat_read_msecs(p, STAT_DISCARD));
}
