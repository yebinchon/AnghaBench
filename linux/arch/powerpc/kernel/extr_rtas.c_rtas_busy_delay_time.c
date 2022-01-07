
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTAS_BUSY ;
 int RTAS_EXTENDED_DELAY_MAX ;
 int RTAS_EXTENDED_DELAY_MIN ;

unsigned int rtas_busy_delay_time(int status)
{
 int order;
 unsigned int ms = 0;

 if (status == RTAS_BUSY) {
  ms = 1;
 } else if (status >= RTAS_EXTENDED_DELAY_MIN &&
     status <= RTAS_EXTENDED_DELAY_MAX) {
  order = status - RTAS_EXTENDED_DELAY_MIN;
  for (ms = 1; order > 0; order--)
   ms *= 10;
 }

 return ms;
}
