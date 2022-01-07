
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* wptr; } ;
typedef TYPE_1__ dns_write_iterator_t ;
struct TYPE_9__ {int target_len; int target; int port; int weight; int priority; } ;
typedef TYPE_2__ dns_srv_t ;
struct TYPE_10__ {TYPE_1__ Out; } ;
typedef TYPE_3__ dns_response_t ;


 scalar_t__ dns_write_iterator_store_name (TYPE_1__*,int ,int ) ;
 scalar_t__ dns_write_iterator_store_ushort (TYPE_1__*,int ) ;
 unsigned short htons (int) ;

__attribute__((used)) static int dns_write_iterator_srv_rdata (dns_response_t *r, dns_srv_t *S, unsigned short *rlen) {
  dns_write_iterator_t *out = &r->Out;
  if (dns_write_iterator_store_ushort (out, S->priority) < 0) { return -1; }
  if (dns_write_iterator_store_ushort (out, S->weight) < 0) { return -1; }
  if (dns_write_iterator_store_ushort (out, S->port) < 0) { return -1; }
  if (dns_write_iterator_store_name (out, S->target, S->target_len) < 0) { return -1; }
  *rlen = htons ((out->wptr - (unsigned char *) rlen) - 2);
  return 0;
}
