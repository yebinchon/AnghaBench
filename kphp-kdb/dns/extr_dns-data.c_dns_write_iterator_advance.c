
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avail_out; int wptr; } ;
typedef TYPE_1__ dns_write_iterator_t ;



__attribute__((used)) static int dns_write_iterator_advance (dns_write_iterator_t *B, int len) {
  if (B->avail_out < len) {
    return -1;
  }
  B->wptr += len;
  B->avail_out -= len;
  return 0;
}
