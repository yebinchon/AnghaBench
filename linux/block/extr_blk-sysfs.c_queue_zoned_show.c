
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;




 int blk_queue_zoned_model (struct request_queue*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t queue_zoned_show(struct request_queue *q, char *page)
{
 switch (blk_queue_zoned_model(q)) {
 case 129:
  return sprintf(page, "host-aware\n");
 case 128:
  return sprintf(page, "host-managed\n");
 default:
  return sprintf(page, "none\n");
 }
}
