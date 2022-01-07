
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long log_endw; long long log_rptr; long long log_start; long long log_wptr; } ;


 TYPE_1__ W ;
 int assert (int) ;
 scalar_t__ binlog_disabled ;
 int crc32_partial (long long,long long,int) ;
 int disable_crc32 ;
 int fprintf (int ,char*,long long) ;
 int log_crc32_complement ;
 long long log_crc32_pos ;
 long long log_pos ;
 int stderr ;

unsigned relax_write_log_crc32 (void) {
  if (binlog_disabled || (disable_crc32 & 4)) {
    return 0;
  }
  long long log_start_pos = W.log_endw ? log_pos + (W.log_endw - W.log_rptr) : log_pos - (W.log_rptr - W.log_start);
  if (!(log_crc32_pos >= log_start_pos) || W.log_wptr < W.log_start) {
    fprintf(stderr, "W.log_endw = %p\n", W.log_endw);
    fprintf(stderr, "log_pos = %lld\n", log_pos);
    fprintf(stderr, "W.log_rptr = %p\n", W.log_rptr);
    fprintf(stderr, "W.log_start = %p\n", W.log_start);
    fprintf(stderr, "W.log_wptr = %p\n", W.log_wptr);
    fprintf(stderr, "log_crc32_pos = %lld\n", log_crc32_pos);
    fprintf(stderr, "log_start_pos = %lld\n", log_start_pos);
  }
  assert (log_crc32_pos >= log_start_pos);
  long long new_log_crc32_pos = log_start_pos + (W.log_wptr - W.log_start);
  assert (log_crc32_pos <= new_log_crc32_pos);
  log_crc32_complement = crc32_partial (W.log_start + (log_crc32_pos - log_start_pos), new_log_crc32_pos - log_crc32_pos, log_crc32_complement);
  log_crc32_pos = new_log_crc32_pos;
  return ~log_crc32_complement;
}
