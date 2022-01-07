
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (unsigned int) ;
 unsigned int plpar_busy_delay_time (int) ;

__attribute__((used)) static unsigned int plpar_busy_delay(int rc)
{
 unsigned int ms;

 ms = plpar_busy_delay_time(rc);
 if (ms)
  mdelay(ms);

 return ms;
}
