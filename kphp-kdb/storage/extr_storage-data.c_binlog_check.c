
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int abs_filename; } ;
typedef TYPE_1__ storage_binlog_file_t ;


 int PREFIX_IO_BUFFSIZE ;
 int equal_file_segment (TYPE_1__*,TYPE_1__*,int,int) ;
 int kprintf (char*,int ,int ) ;

int binlog_check (storage_binlog_file_t *I1, storage_binlog_file_t *I2) {
  if (I1->size != I2->size) {
    kprintf ("%s and %s has different size\n", I1->abs_filename, I2->abs_filename);
  }
  if (I1->size > I2->size) {
    storage_binlog_file_t *tmp = I1; I1 = I2; I2 = tmp;
  }
  int l = PREFIX_IO_BUFFSIZE;
  if (l > I1->size) {
    l = I1->size;
  }

  int r = equal_file_segment (I1, I2, 0, l);
  if (r < 0) {
    kprintf ("head 32Ki of '%s' and '%s' are differ.\n", I1->abs_filename, I2->abs_filename);
    return r;
  }

  if (I1->size > PREFIX_IO_BUFFSIZE) {
    r = equal_file_segment (I1, I2, I1->size - l, l);
    if (r < 0) {
      kprintf ("tail 32Ki of '%s' and '%s' are differ.\n", I1->abs_filename, I2->abs_filename);
      return r;
    }
  }
  return 0;
}
