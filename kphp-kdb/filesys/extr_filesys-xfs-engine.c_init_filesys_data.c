
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int filesys_xfs_replay_logevent ;
 int replay_logevent ;

int init_filesys_data (int schema) {
  replay_logevent = filesys_xfs_replay_logevent;
  return 0;
}
