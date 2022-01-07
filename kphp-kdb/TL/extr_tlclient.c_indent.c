
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int indentation; } ;


 int log_str (char*) ;
 TYPE_1__ params ;
 int parse_bool (char*) ;

int indent (char *s) {
  int b = parse_bool (s);
  if (b == 1) {
    log_str ("Indentation is enabled.\n");
    params.indentation = 1;
  } else if (b == 0) {
    log_str ("Indentation is disabled.\n");
    params.indentation = 0;
  }
  return 0;
}
