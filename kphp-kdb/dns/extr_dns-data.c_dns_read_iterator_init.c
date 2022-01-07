
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* start; unsigned char* rptr; int ilen; int avail_in; } ;
typedef TYPE_1__ dns_read_iterator_t ;



__attribute__((used)) static void dns_read_iterator_init (dns_read_iterator_t *B, unsigned char *in, int ilen) {
  B->start = B->rptr = in;
  B->ilen = B->avail_in = ilen;
}
