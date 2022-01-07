
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disk_read_time; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 scalar_t__ BINLOG_BUFFER ;
 scalar_t__ BINLOG_BUFFER_END ;
 int BINLOG_BUFFER_FD ;
 scalar_t__ BINLOG_BUFFER_FPTR ;
 long long BINLOG_BUFFER_SIZE ;
 scalar_t__ BINLOG_BUFFER_WPTR ;
 long long BINLOG_POSITION ;
 int SEEK_SET ;
 TYPE_2__* STATS ;
 int assert (int) ;
 int fprintf (int ,char*,long long) ;
 scalar_t__ get_double_time_since_epoch () ;
 long long lseek (int ,long long,int ) ;
 int memcpy (scalar_t__,scalar_t__,long long) ;
 long long read (int ,scalar_t__,long long) ;
 int stderr ;
 int verbosity ;

void update_binlog_buffer (long long old_binlog_position) {
  assert (BINLOG_POSITION > old_binlog_position);
  assert (BINLOG_BUFFER_WPTR == BINLOG_BUFFER_FPTR);
  long long size = BINLOG_POSITION - old_binlog_position;
  if (BINLOG_POSITION - old_binlog_position > BINLOG_BUFFER_SIZE) {
    STATS->structured.disk_read_time -= get_double_time_since_epoch ();
    assert (lseek (BINLOG_BUFFER_FD, BINLOG_POSITION - BINLOG_BUFFER_SIZE, SEEK_SET) == BINLOG_POSITION - BINLOG_BUFFER_SIZE);
    assert (read (BINLOG_BUFFER_FD, BINLOG_BUFFER, BINLOG_BUFFER_SIZE) == BINLOG_BUFFER_SIZE);
    STATS->structured.disk_read_time += get_double_time_since_epoch ();
    if (verbosity >= 4) {
      fprintf (stderr, "read %lld bytes of replicating file\n", (long long)BINLOG_BUFFER_SIZE);
    }
    BINLOG_BUFFER_WPTR = BINLOG_BUFFER + BINLOG_BUFFER_SIZE;
    BINLOG_BUFFER_FPTR = BINLOG_BUFFER_WPTR;
  } else {
    if (BINLOG_BUFFER_WPTR + size > BINLOG_BUFFER_END) {
      memcpy (BINLOG_BUFFER, BINLOG_BUFFER_WPTR - (BINLOG_BUFFER_SIZE - size), BINLOG_BUFFER_SIZE - size);
      STATS->structured.disk_read_time -= get_double_time_since_epoch ();
      BINLOG_BUFFER_WPTR = BINLOG_BUFFER + (BINLOG_BUFFER_SIZE - size);
      BINLOG_BUFFER_FPTR = BINLOG_BUFFER + (BINLOG_BUFFER_SIZE - size);
      STATS->structured.disk_read_time += get_double_time_since_epoch ();
    }
    assert (lseek (BINLOG_BUFFER_FD, BINLOG_POSITION - size, SEEK_SET) == BINLOG_POSITION - size);
    assert (read (BINLOG_BUFFER_FD, BINLOG_BUFFER_WPTR, size) == size);
    BINLOG_BUFFER_WPTR += size;
    BINLOG_BUFFER_FPTR += size;
    if (verbosity >= 4) {
      fprintf (stderr, "read %lld bytes of replicating file\n", size);
    }
  }
}
