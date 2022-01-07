
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repl_client_status {scalar_t__ unflushed_bytes; double last_flush_time; struct related_binlog* rb; } ;
struct related_binlog {TYPE_2__* kfs_binlog; } ;
struct TYPE_4__ {int fd; TYPE_1__* info; } ;
struct TYPE_3__ {int filename; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ MAX_CLIENT_UNFLUSHED_BYTES ;
 double MAX_FLUSH_INTERVAL ;
 int assert (int) ;
 scalar_t__ fsync (int ) ;
 double get_utime (int ) ;
 int tot_unflushed_bytes ;
 int vkprintf (int,char*,scalar_t__,int ) ;

int check_flush_client (struct repl_client_status *C) {
  double p_now = get_utime (CLOCK_MONOTONIC);
  if (C->unflushed_bytes >= MAX_CLIENT_UNFLUSHED_BYTES || (C->unflushed_bytes && p_now > C->last_flush_time + MAX_FLUSH_INTERVAL)) {
    struct related_binlog *R = C->rb;
    vkprintf (2, "%lld unflushed bytes pending in binlog slice %s, syncing...\n", C->unflushed_bytes, R->kfs_binlog->info->filename);
    assert (fsync (R->kfs_binlog->fd) >= 0);
    tot_unflushed_bytes -= C->unflushed_bytes;
    C->unflushed_bytes = 0;
    C->last_flush_time = p_now;
    return 1;
  }
  return 0;
}
