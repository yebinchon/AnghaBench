
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ machine_is_tosa () ;
 int max1111_read_channel (int) ;

int sharpsl_pm_pxa_read_max1111(int channel)
{

 if (machine_is_tosa())
     return 0;




 return max1111_read_channel(channel >> 1);
}
