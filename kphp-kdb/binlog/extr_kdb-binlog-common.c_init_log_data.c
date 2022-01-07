
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int orig_file_size; } ;
typedef TYPE_2__ kfs_binlog_zip_header_t ;
struct TYPE_7__ {TYPE_1__* info; int fd; } ;
struct TYPE_5__ {int flags; int file_size; scalar_t__ start; int filename; } ;


 TYPE_3__* Binlog ;
 int assert (TYPE_3__*) ;
 int binlog_zipped ;
 int binlogname ;
 int log_seek (long long,int,unsigned int) ;
 scalar_t__ log_start_pos ;
 scalar_t__ max_binlog_size ;
 scalar_t__ next_binlog_rotate_pos ;
 int set_log_data (int ,int ) ;

void init_log_data (long long new_log_pos, int log_timestamp, unsigned log_crc32) {
  assert (Binlog);
  binlog_zipped = Binlog->info->flags & 16;
  binlogname = Binlog->info->filename;
  set_log_data (Binlog->fd, binlog_zipped ? ((kfs_binlog_zip_header_t *) Binlog->info->start)->orig_file_size : Binlog->info->file_size);
  log_seek (new_log_pos, log_timestamp, log_crc32);
  next_binlog_rotate_pos = log_start_pos + max_binlog_size;
}
