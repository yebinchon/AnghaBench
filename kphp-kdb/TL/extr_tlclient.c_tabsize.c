
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tabsize; } ;


 int log_printf (char*,int) ;
 TYPE_1__ params ;
 int sscanf (char*,char*,int*) ;

int tabsize (char *s) {
  int i;
  if (sscanf (s, "%d", &i) == 1) {
    if (i > 8) {
      i = 8;
    }
    if (i < 2) {
      i = 2;
    }
    log_printf ("Set tabsize to %d\n", i);
    params.tabsize = i;
  }
  return 0;
}
