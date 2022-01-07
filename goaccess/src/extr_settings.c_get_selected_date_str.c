
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; int usec; int w3c; int apache; } ;
 char* alloc_string (int ) ;
 TYPE_1__ dates ;

char *
get_selected_date_str (size_t idx)
{
  char *fmt = ((void*)0);
  switch (idx) {
  case 132:
  case 129:
  case 133:
  case 130:
  case 136:
    fmt = alloc_string (dates.apache);
    break;
  case 137:
  case 135:
  case 128:
    fmt = alloc_string (dates.w3c);
    break;
  case 134:
    fmt = alloc_string (dates.usec);
    break;
  case 131:
    fmt = alloc_string (dates.sec);
    break;
  }

  return fmt;
}
