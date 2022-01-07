
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_WC ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t queue_wc_show(struct request_queue *q, char *page)
{
 if (test_bit(QUEUE_FLAG_WC, &q->queue_flags))
  return sprintf(page, "write back\n");

 return sprintf(page, "write through\n");
}
