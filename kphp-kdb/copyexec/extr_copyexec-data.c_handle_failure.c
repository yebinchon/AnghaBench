
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyexec_abort () ;
 scalar_t__ exit_on_failure ;

__attribute__((used)) static void handle_failure (void) {
  if (exit_on_failure) {
    copyexec_abort ();
  }
}
