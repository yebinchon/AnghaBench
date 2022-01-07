
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compiler ;
 scalar_t__ log_file ;
 scalar_t__ stdout ;
 int tl_schema_print_unused_types (int *,scalar_t__) ;

int unused (char *s) {
  int r = tl_schema_print_unused_types (&compiler, stdout);
  if (log_file) {
    tl_schema_print_unused_types (&compiler, log_file);
  }
  return r;
}
