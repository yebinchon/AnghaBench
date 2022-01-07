
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buff_file {int after_crc32; scalar_t__ timestamp; } ;


 scalar_t__ is_message_event ;
 scalar_t__ now ;
 int tmp_adjust_global_id (struct buff_file*,int) ;
 int tmp_write_crc32 (struct buff_file*,scalar_t__) ;
 int tmp_write_lev (struct buff_file*,void const*,int) ;
 int tmp_write_ts (struct buff_file*,scalar_t__) ;

void tmp_write_logevent (struct buff_file *T, const void *L, int size) {
  if (T->after_crc32 > 16384) {
    tmp_write_crc32 (T, now);
  } else if (now != T->timestamp && now) {
    tmp_write_ts (T, now);
  }
  if (is_message_event) {
    tmp_adjust_global_id (T, 1);
  }
  tmp_write_lev (T, L, size);
}
