
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_crc32 {long long pos; unsigned int crc32; int timestamp; } ;


 int LEV_CRC32 ;
 struct lev_crc32* alloc_log_event (int ,int,int ) ;
 int binlog_cyclic_mode ;
 int binlog_disabled ;
 scalar_t__ bytes_after_crc32 ;
 scalar_t__ force_new_binlog () ;
 int fprintf (int ,char*,int,long long,unsigned int) ;
 long long log_crc32_pos ;
 long long log_pos ;
 long long next_binlog_rotate_pos ;
 unsigned int relax_write_log_crc32 () ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static inline void alloc_log_crc32_event (void) {
  unsigned crc32 = relax_write_log_crc32();
  long long pos = log_crc32_pos;

  if (!binlog_cyclic_mode) {
    if (!binlog_disabled && pos >= next_binlog_rotate_pos && force_new_binlog() > 0) {
      return;
    }
  } else {
    if (!binlog_disabled && log_pos >= next_binlog_rotate_pos && force_new_binlog() > 0) {
      return;
    }
  }

  struct lev_crc32 *E = alloc_log_event (LEV_CRC32, sizeof (struct lev_crc32), 0);
  E->pos = pos;
  E->crc32 = crc32;

  if (verbosity > 2) {
    fprintf (stderr, "written log crc32 event: timestamp=%d, pos=%lld, crc32=%08x\n", E->timestamp, pos, crc32);
  }

  bytes_after_crc32 = 0;
}
