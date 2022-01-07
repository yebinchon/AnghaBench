
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_atomic () ;
 scalar_t__ in_interrupt () ;
 scalar_t__ irqs_disabled () ;

int __cant_sleep(void) {
 return in_atomic() || irqs_disabled() || in_interrupt();

}
