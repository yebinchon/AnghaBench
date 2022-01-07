
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int poll_nsec; } ;
typedef int ssize_t ;


 int BLK_MQ_POLL_CLASSIC ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t queue_poll_delay_show(struct request_queue *q, char *page)
{
 int val;

 if (q->poll_nsec == BLK_MQ_POLL_CLASSIC)
  val = BLK_MQ_POLL_CLASSIC;
 else
  val = q->poll_nsec / 1000;

 return sprintf(page, "%d\n", val);
}
