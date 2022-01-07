
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int div_u64 (int ,int) ;
 int sprintf (char*,char*,int ) ;
 int wbt_get_min_lat (struct request_queue*) ;
 int wbt_rq_qos (struct request_queue*) ;

__attribute__((used)) static ssize_t queue_wb_lat_show(struct request_queue *q, char *page)
{
 if (!wbt_rq_qos(q))
  return -EINVAL;

 return sprintf(page, "%llu\n", div_u64(wbt_get_min_lat(q), 1000));
}
