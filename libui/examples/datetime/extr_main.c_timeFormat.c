
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDateTimePicker ;


 int * dtboth ;
 int * dtdate ;
 int * dttime ;

const char *timeFormat(uiDateTimePicker *d)
{
 const char *fmt;

 if (d == dtboth)
  fmt = "%c";
 else if (d == dtdate)
  fmt = "%x";
 else if (d == dttime)
  fmt = "%X";
 else
  fmt = "";
 return fmt;
}
