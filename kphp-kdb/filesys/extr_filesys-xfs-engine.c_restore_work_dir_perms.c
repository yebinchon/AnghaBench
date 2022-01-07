
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mode_t ;


 scalar_t__ chmod (int ,scalar_t__) ;
 int kprintf (char*,int,int ) ;
 int work_dir ;

void restore_work_dir_perms (int change_extract_dir_perms_during_replay_log, mode_t old_mode) {
  if (change_extract_dir_perms_during_replay_log) {
    if (chmod (work_dir, old_mode) < 0) {
      kprintf ("chmod 0%o \"%s\" fail. %m\n", (int) old_mode, work_dir);
    }
  }
}
