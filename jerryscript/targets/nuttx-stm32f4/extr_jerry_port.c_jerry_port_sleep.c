
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int useconds_t ;
typedef scalar_t__ uint32_t ;


 int usleep (int) ;

void jerry_port_sleep (uint32_t sleep_time)
{
  usleep ((useconds_t) sleep_time * 1000);
}
