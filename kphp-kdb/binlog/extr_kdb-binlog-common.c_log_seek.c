
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long log_start_pos; } ;


 TYPE_1__ R ;
 int SEEK_SET ;
 int binlog_fd ;
 int binlog_zipped ;
 int clear_read_log () ;
 int disable_crc32 ;
 int exit (int) ;
 int fprintf (int ,char*,long long,int ) ;
 unsigned int log_crc32_complement ;
 long long log_crc32_pos ;
 int log_first_ts ;
 long long log_headers_size ;
 int log_last_ts ;
 long long log_pos ;
 int log_read_until ;
 long long log_start_pos ;
 scalar_t__ lseek (int ,long long,int ) ;
 int stderr ;

void log_seek (long long new_log_pos, int log_timestamp, unsigned log_crc32) {
  long long log_file_pos = new_log_pos - log_start_pos + log_headers_size;
  if (log_file_pos < 0 || (!binlog_zipped && lseek (binlog_fd, log_file_pos, SEEK_SET) < 0)) {
    fprintf (stderr, "cannot seek file position %lld in binlog file %d: %m\n", new_log_pos, binlog_fd);
    exit (1);
  }
  clear_read_log ();
  log_first_ts = log_read_until = log_last_ts = log_timestamp;
  log_pos = new_log_pos;
  R.log_start_pos = log_pos;
  if (log_crc32 || !new_log_pos) {
    log_crc32_pos = new_log_pos;
    log_crc32_complement = ~log_crc32;
  } else {
    disable_crc32 = 7;
  }
}
