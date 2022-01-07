
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out_packet_num; } ;


 TYPE_1__* RPCS_DATA (int ) ;
 int TL_OUT_CONN ;
 int TL_OUT_POS ;
 int* TL_OUT_SIZE ;

__attribute__((used)) static inline void __tl_conn_store_prefix (void) {
  int *p = TL_OUT_SIZE;
  p[0] = TL_OUT_POS + 24;
  p[1] = RPCS_DATA(TL_OUT_CONN)->out_packet_num ++;
}
