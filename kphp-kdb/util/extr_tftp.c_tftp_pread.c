
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_1__ tftp_file_t ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;


 int memcpy (void*,scalar_t__,size_t) ;

ssize_t tftp_pread (tftp_file_t *F, void *buf, size_t count, off_t offset) {
  if (offset < 0 || offset > F->size) {
    return -1;
  }
  if (count > F->size - offset) {
    count = F->size - offset;
  }
  memcpy (buf, F->data + offset, count);
  return count;
}
