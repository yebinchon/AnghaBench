
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int* UNITS ;
 int snprintf (char*,size_t,char*,double,...) ;

void format_speed_display_1k (double val, char *buf, size_t len)
{
  if (val <= 0)
  {
    buf[0] = '0';
    buf[1] = ' ';
    buf[2] = 0;

    return;
  }

  u32 level = 0;

  while (val > 999)
  {
    val /= 1000;

    level++;
  }



  if (level == 0)
  {
    snprintf (buf, len, "%.0f ", val);
  }
  else
  {
    snprintf (buf, len, "%.1f %c", val, UNITS[level]);
  }
}
