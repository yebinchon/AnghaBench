
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag_output_magic; } ;


 TYPE_1__ compiler ;
 int log_str (char*) ;
 int parse_bool (char*) ;

int magic (char *s) {
  int b = parse_bool (s);
  if (b == 1) {
    log_str ("Output magics is enabled.\n");
    compiler.flag_output_magic = 1;
  } else if (b == 0) {
    log_str ("Output magics is disabled.\n");
    compiler.flag_output_magic = 0;
  }
  return 0;
}
