
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int IRQ_READ ;
 int IRQ_WRITE ;

int os_event_mask(int irq_type)
{
 if (irq_type == IRQ_READ)
  return EPOLLIN | EPOLLPRI;
 if (irq_type == IRQ_WRITE)
  return EPOLLOUT;
 return 0;
}
