
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void skd_kill_timer(struct skd_device *skdev)
{
 del_timer_sync(&skdev->timer);
}
