
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {int record_start; int wptr; } ;
struct TYPE_9__ {int truncated; TYPE_1__ header; TYPE_2__ Out; int * q; } ;
typedef TYPE_3__ dns_response_t ;
typedef int dns_query_t ;


 int dns_gen_response (TYPE_3__*,unsigned char*,int) ;
 int dns_header_flag_tc ;
 int dns_store_header (TYPE_3__*) ;

int dns_query_act (dns_query_t *q, dns_response_t *r, unsigned char *out, int olen) {
  r->truncated = 0;
  r->q = q;
  int res = dns_gen_response (r, out, olen);
  if (res == -2) {
    r->Out.wptr = r->Out.record_start;
    r->header.flags |= dns_header_flag_tc;
    r->truncated = 1;
    res = dns_store_header (r);
  }
  return res;
}
