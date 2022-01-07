
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_dev {int poll_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void cm4040_stop_poll(struct reader_dev *dev)
{
 del_timer_sync(&dev->poll_timer);
}
