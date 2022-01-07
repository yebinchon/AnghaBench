
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRIS_GIO_OUTPUT ;
 int IRIS_GIO_PULSE ;
 int IRIS_GIO_REST ;
 int msleep (int) ;
 int outb (int ,int ) ;

__attribute__((used)) static void iris_power_off(void)
{
 outb(IRIS_GIO_PULSE, IRIS_GIO_OUTPUT);
 msleep(850);
 outb(IRIS_GIO_REST, IRIS_GIO_OUTPUT);
}
