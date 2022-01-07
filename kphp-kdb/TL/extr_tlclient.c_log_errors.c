
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compiler ;
 scalar_t__ log_file ;
 scalar_t__ stdout ;
 int tl_compiler_print_errors (int *,scalar_t__) ;

__attribute__((used)) static void log_errors (void) {
  tl_compiler_print_errors (&compiler, stdout);
  if (log_file) {
    tl_compiler_print_errors (&compiler, log_file);
  }
}
