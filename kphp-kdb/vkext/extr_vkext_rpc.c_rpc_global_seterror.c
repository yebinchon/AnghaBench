
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_MALLOC (scalar_t__) ;
 int error_verbosity ;
 int global_errnum ;
 char const* global_error ;
 int print_backtrace () ;
 int printf (char*,char const*,int) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 int zzfree (char const*,scalar_t__) ;

__attribute__((used)) static void rpc_global_seterror (const char *error, int errnum) {
  if (error) {

    if (global_error) {
      zzfree (global_error, strlen (global_error) + 1);
    }
    global_error = strdup (error);
    ADD_MALLOC (strlen (error) + 1);
    global_errnum = errnum;
    if (error && error_verbosity >= 1) {
      printf ("Error %s (error_code %d)\n", error, errnum);
      if (error_verbosity >= 2) {
        print_backtrace ();
      }
    }
  }
}
