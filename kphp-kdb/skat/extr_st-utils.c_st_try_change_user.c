
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ change_user (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* username ;
 int verbosity ;

void st_try_change_user (void)
{
  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(default)");
    exit (1);
  }
  if (verbosity >= 2) {
    fprintf (stderr, "User changed to %s\n", username ? username : "(default)");
  }
}
