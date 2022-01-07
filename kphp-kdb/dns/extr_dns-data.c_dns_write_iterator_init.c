
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* start; unsigned char* wptr; int olen; int avail_out; int domain_buff; int domain_wptr; scalar_t__ domains; } ;
typedef TYPE_1__ dns_write_iterator_t ;



__attribute__((used)) static void dns_write_iterator_init (dns_write_iterator_t *B, unsigned char *out, int olen) {
  B->start = B->wptr = out;
  B->olen = B->avail_out = olen;
  B->domains = 0;
  B->domain_wptr = B->domain_buff;
}
