
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int drive_r; } ;


 int assert (int) ;
 int * fd ;
 TYPE_2__ header ;
 int kprintf (char*,int,int ,int) ;
 int ** letter_stat ;
 scalar_t__ log_drive ;
 scalar_t__ write (int ,void const*,int) ;

void write_to (int priority, const void *letter_buf, int count) {

  assert (write (fd[2 + priority], letter_buf, count) == (ssize_t)count);
  if (log_drive) {
    kprintf ("write %9d bytes  to  position %12lld in buffer %d\n", count, header.data[priority].drive_r, priority);
  }
  letter_stat[priority][4]++;
}
