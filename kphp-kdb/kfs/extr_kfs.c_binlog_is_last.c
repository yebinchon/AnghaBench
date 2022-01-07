
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kfs_replica {int binlog_num; struct kfs_file_info** binlogs; } ;
struct kfs_file_info {scalar_t__ log_pos; scalar_t__ kfs_file_type; struct kfs_replica* replica; } ;
typedef TYPE_1__* kfs_file_handle_t ;
struct TYPE_3__ {struct kfs_file_info* info; } ;


 int assert (int) ;
 scalar_t__ kfs_binlog ;

int binlog_is_last (kfs_file_handle_t F) {
  assert (F && F->info && F->info->log_pos >= 0 && F->info->kfs_file_type == kfs_binlog && F->info->replica);

  struct kfs_file_info *FI = F->info;
  struct kfs_replica *R = FI->replica;

  if (R && (!R->binlog_num || R->binlogs[R->binlog_num - 1] != FI)) {
    return 0;
  }
  return 1;
}
