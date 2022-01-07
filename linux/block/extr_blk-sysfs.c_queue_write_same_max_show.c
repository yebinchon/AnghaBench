
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_write_same_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t queue_write_same_max_show(struct request_queue *q, char *page)
{
 return sprintf(page, "%llu\n",
  (unsigned long long)q->limits.max_write_same_sectors << 9);
}
