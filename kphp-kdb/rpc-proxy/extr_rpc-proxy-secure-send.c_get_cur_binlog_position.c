
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binlog_pos {int timestamp; int crc32; scalar_t__ pos; } ;


 int assert (int) ;
 int log_crc32_complement ;
 scalar_t__ log_crc32_pos ;
 scalar_t__ log_cur_pos () ;
 scalar_t__ log_last_pos () ;
 int now ;
 int relax_log_crc32 (int ) ;
 int relax_write_log_crc32 () ;

struct binlog_pos get_cur_binlog_position (int replay) {
  struct binlog_pos t;
  if (replay) {
    relax_log_crc32 (0);
    assert (log_cur_pos () == log_crc32_pos);
  } else {
    relax_write_log_crc32 ();
    assert (log_last_pos () == log_crc32_pos);
  }

  t.pos = log_crc32_pos;
  t.crc32 = ~log_crc32_complement;
  t.timestamp = now;
  return t;
}
