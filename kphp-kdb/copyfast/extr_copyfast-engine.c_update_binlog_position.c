
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {long long st_size; } ;
struct TYPE_3__ {int last_binlog_update; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int BINLOG_BUFFER_FD ;
 long long BINLOG_POSITION ;
 int LOG_BINLOG_UPDATED ;
 long long MAX_BINLOG_SIZE ;
 TYPE_2__* STATS ;
 int assert (int) ;
 int fstat (int ,struct stat*) ;
 int get_double_time_since_epoch () ;
 int log_event (int,int ,long long) ;
 int send_friends_binlog_position () ;
 int update_binlog_buffer (long long) ;
 int update_crc64 (long long) ;

void update_binlog_position (void) {
  struct stat t;
  fstat (BINLOG_BUFFER_FD, &t);
  long long old_binlog_position = BINLOG_POSITION;
  BINLOG_POSITION = t.st_size;
  assert (BINLOG_POSITION < MAX_BINLOG_SIZE);
  if (BINLOG_POSITION != old_binlog_position) {
    log_event (1, LOG_BINLOG_UPDATED, BINLOG_POSITION);
    update_crc64 (old_binlog_position);
    update_binlog_buffer (old_binlog_position);
    STATS->structured.last_binlog_update = get_double_time_since_epoch ();
    send_friends_binlog_position ();
  }
}
