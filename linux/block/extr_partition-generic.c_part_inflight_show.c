
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


 struct hd_struct* dev_to_part (struct device*) ;
 int part_in_flight_rw (struct request_queue*,struct hd_struct*,unsigned int*) ;
 TYPE_1__* part_to_disk (struct hd_struct*) ;
 int sprintf (char*,char*,unsigned int,unsigned int) ;

ssize_t part_inflight_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct hd_struct *p = dev_to_part(dev);
 struct request_queue *q = part_to_disk(p)->queue;
 unsigned int inflight[2];

 part_in_flight_rw(q, p, inflight);
 return sprintf(buf, "%8u %8u\n", inflight[0], inflight[1]);
}
