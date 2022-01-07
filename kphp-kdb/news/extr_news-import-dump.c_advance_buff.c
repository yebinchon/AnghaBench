
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IMPORT_BUFF_SIZE ;
 scalar_t__ import_buff ;
 int import_fd ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ read (int ,scalar_t__,scalar_t__) ;
 scalar_t__ rend ;
 scalar_t__ rptr ;

void advance_buff (void) {

  memmove (import_buff, rptr, rend - rptr);
  rend -= (rptr - import_buff);
  rptr = import_buff;
  rend += read (import_fd, rend, import_buff + IMPORT_BUFF_SIZE - rend);
}
