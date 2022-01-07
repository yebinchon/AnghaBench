
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_NAME ;
 int argc_copy ;
 char** argv_copy ;
 int memset (char*,int ,int) ;
 scalar_t__ prctl (int ,unsigned long,int ,int ,int ) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int vkprintf (int,char*,char*) ;

void change_process_name (char *new_name) {

  if (prctl (PR_SET_NAME, (unsigned long) new_name, 0, 0, 0) < 0) {
    vkprintf (1, "changing process name to %s failed. %m\n", new_name);
  }

  int i;
  for (i = 1; i < argc_copy; i++) {
    memset (argv_copy[i], 0, strlen (argv_copy[i]));
  }
  i = strlen (new_name) - strlen (argv_copy[0]);
  if (i < 0) {
    i = 0;
  }
  strncpy (argv_copy[0], new_name + i, strlen (argv_copy[0]));
}
