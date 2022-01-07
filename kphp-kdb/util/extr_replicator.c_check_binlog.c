
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct related_binlog {char* path; int flags; int first_file_start_size; scalar_t__ max_binlog_pos; TYPE_2__* binlog; int kfs_replica; int update_generation; TYPE_1__* local; } ;
struct TYPE_4__ {int flags; char* binlog_tag; } ;
struct TYPE_3__ {size_t location_len; char* location; } ;


 int assert (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int hostname ;
 size_t hostname_len ;
 int load_binlog_data (struct related_binlog*) ;
 int memcmp (char*,int ,size_t) ;
 int open_replica (char*,int) ;
 int sigrtmax_cnt ;
 int stderr ;
 int valid_binlog_path (char*) ;
 scalar_t__ workers ;

int check_binlog (struct related_binlog *R) {
  assert (R && R->local && R->local->location_len > hostname_len && !memcmp (R->local->location, hostname, hostname_len) && R->local->location[hostname_len] == ':');
  char *path = R->path = R->local->location + hostname_len + 1;
  R->flags = R->binlog->flags;
  if (!valid_binlog_path (path)) {
    fprintf (stderr, "local binlog path %s for binlog %s is invalid, ignoring entry\n", path, R->binlog->binlog_tag);
    return -1;
  }
  if (workers) {
    return -1;
  }
  R->kfs_replica = open_replica (path, R->flags & 4 ? 0 : 1);
  R->update_generation = sigrtmax_cnt;
  if (!R->kfs_replica) {
    fprintf (stderr, "error: cannot open kfs replica %s for binlog tag %s, ignoring entry\n", path, R->binlog->binlog_tag);
    return -1;
  }
  R->first_file_start_size = -1;
  R->max_binlog_pos = 0;
  return load_binlog_data (R);
}
