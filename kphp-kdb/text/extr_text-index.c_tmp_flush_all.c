
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buff_file {int fd; int timestamp; scalar_t__ after_crc32; } ;


 int SEEK_SET ;
 int assert (int) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int passes ;
 struct buff_file* temp_file ;
 int tmp_adjust_global_id (struct buff_file*,int ) ;
 int tmp_flush_out (struct buff_file*) ;
 int tmp_write_crc32 (struct buff_file*,int ) ;

int tmp_flush_all (void) {
  int i;
  for (i = 0; i < passes; i++) {
    struct buff_file *T = &temp_file[i];
    tmp_adjust_global_id (T, 0);
    if (T->after_crc32) {
      tmp_write_crc32 (T, T->timestamp);
    }
    tmp_flush_out (T);
    assert (lseek (T->fd, 0, SEEK_SET) == 0);
  }
  return passes;
}
