
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avail_out; unsigned short* wptr; } ;
typedef TYPE_1__ dns_write_iterator_t ;



__attribute__((used)) static int dns_write_iterator_store_ushort (dns_write_iterator_t *B, unsigned short x) {
  if (B->avail_out < 2) {
    return -1;
  }
  B->wptr[0] = (x >> 8);
  B->wptr[1] = (x & 0xff);
  B->avail_out -= 2;
  B->wptr += 2;
  return 0;
}
