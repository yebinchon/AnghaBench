
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char*,char*) ;
 int log_printf (char*,char*) ;
 int * scheme_filename ;
 scalar_t__ send_rpc_command (char*) ;

int retrieve_current_scheme (char *s) {
  scheme_filename = fopen (s, "w");
  if (scheme_filename == ((void*)0)) {
    log_printf ("Couln't open \"%s\" for writing. %m\n", s);
    return -1;
  }

  if (send_rpc_command ("(help.getScheme 1)") < 0) {
    return -1;
  }
  return 0;
}
