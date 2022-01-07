
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; int usec; int fmt24; } ;
 char* alloc_string (int ) ;
 TYPE_1__ times ;

char *
get_selected_time_str (size_t idx)
{
  char *fmt = ((void*)0);
  switch (idx) {
  case 137:
  case 135:
  case 133:
  case 132:
  case 130:
  case 129:
  case 128:
  case 136:
    fmt = alloc_string (times.fmt24);
    break;
  case 134:
    fmt = alloc_string (times.usec);
    break;
  case 131:
    fmt = alloc_string (times.sec);
    break;
  }

  return fmt;
}
