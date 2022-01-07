
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t dir_id; int st_fsync; } ;
typedef TYPE_1__ storage_binlog_file_t ;
struct TYPE_5__ {int st_fsync; } ;


 TYPE_3__* Dirs ;
 int update_read_stat (int *,int) ;

void update_binlog_fsync_stat (storage_binlog_file_t *B, int success) {
  update_read_stat (&Dirs[B->dir_id].st_fsync, success);
  update_read_stat (&B->st_fsync, success);
}
