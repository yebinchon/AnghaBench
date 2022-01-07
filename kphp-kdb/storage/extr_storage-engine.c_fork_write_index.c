
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume_t ;


 int ** Volumes ;
 scalar_t__ active_gathers ;
 int child_pid ;
 int exit (int) ;
 scalar_t__ force_write_index ;
 int fork () ;
 int kprintf (char*) ;
 scalar_t__ save_index (int *) ;
 int save_index_process ;
 int vkprintf (int,char*,int) ;
 int volumes ;

void fork_write_index (void) {
  if (child_pid) {
    vkprintf (1, "process with pid %d already generates index, skipping\n", child_pid);
    return;
  }
  if (active_gathers > 0) {
    vkprintf (1, "active_gathers = %d, skipping(waiting) generating index\n", active_gathers);
    return;
  }

  int res = fork ();
  if (res < 0) {
    kprintf ("fork: %m\n");
  } else if (!res) {
    int i, res = 0;

    save_index_process = 1;
    for (i = 0; i < volumes; i++) {
      volume_t *V = Volumes[i];
      if (save_index (V)) {
        res |= 1;
      }
    }
    exit (res);
  } else {
    vkprintf (1, "created child process pid = %d\n", res);
    child_pid = res;
  }
  force_write_index = 0;
}
