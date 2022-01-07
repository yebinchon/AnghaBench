
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* wptr; } ;
typedef TYPE_1__ dns_write_iterator_t ;
struct TYPE_9__ {TYPE_1__ Out; } ;
typedef TYPE_2__ dns_response_t ;
struct TYPE_10__ {int addrs_nsd; int nsdname_len; int nsdname; } ;
typedef TYPE_3__ dns_nameserver_en_t ;


 int dns_adresses_find (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ dns_write_iterator_store_name (TYPE_1__*,int ,int ) ;
 unsigned short htons (int) ;

__attribute__((used)) static int dns_write_iterator_ns_rdata (dns_response_t *r, dns_nameserver_en_t *N, unsigned short *rlen) {

  dns_write_iterator_t *out = &r->Out;
  if (dns_write_iterator_store_name (out, N->nsdname, N->nsdname_len) < 0) { return -1; }
  *rlen = htons ((out->wptr - (unsigned char *) rlen) - 2);
  dns_adresses_find (r, N->nsdname, N->nsdname_len, &N->addrs_nsd);
  return 0;
}
