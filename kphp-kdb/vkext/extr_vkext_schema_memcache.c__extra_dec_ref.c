
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {scalar_t__ extra_free; scalar_t__ extra; } ;


 int DEC_REF (scalar_t__) ;
 int total_tl_working ;

void _extra_dec_ref (struct rpc_query *q) {
  if (q->extra) {
    total_tl_working --;
  }
  DEC_REF (q->extra);
  q->extra = 0;
  q->extra_free = 0;
}
