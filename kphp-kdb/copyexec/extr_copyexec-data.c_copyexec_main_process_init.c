
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_process_creation_time (int ) ;
 int getpid () ;
 int main_pid ;
 int main_process_creation_time ;
 int running_lists_init () ;
 int time (int *) ;
 int vkprintf (int,char*) ;

void copyexec_main_process_init (void) {
  main_pid = getpid ();
  main_process_creation_time = get_process_creation_time (main_pid);
  int t = time (((void*)0)) - main_process_creation_time;
  if (!(t > -10 && t < 10)) {
    vkprintf (1, "copyexec_main_process_init: |time (NULL) - get_process_creation_time (getpid ())| >= 10\n");
  }
  running_lists_init ();
}
