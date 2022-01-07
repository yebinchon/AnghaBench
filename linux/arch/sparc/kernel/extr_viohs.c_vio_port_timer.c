
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;
struct timer_list {int dummy; } ;


 struct vio_driver_state* from_timer (int ,struct timer_list*,int ) ;
 int timer ;
 struct vio_driver_state* vio ;
 int vio_port_up (struct vio_driver_state*) ;

__attribute__((used)) static void vio_port_timer(struct timer_list *t)
{
 struct vio_driver_state *vio = from_timer(vio, t, timer);

 vio_port_up(vio);
}
