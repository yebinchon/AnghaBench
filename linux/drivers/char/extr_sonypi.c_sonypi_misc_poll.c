
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int fifo; int fifo_proc_list; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ kfifo_len (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static __poll_t sonypi_misc_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &sonypi_device.fifo_proc_list, wait);
 if (kfifo_len(&sonypi_device.fifo))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
