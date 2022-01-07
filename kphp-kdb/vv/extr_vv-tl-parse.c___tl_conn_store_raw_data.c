
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Out; } ;


 TYPE_1__* TL_OUT_CONN ;
 int assert (int) ;
 int write_out (int *,void const*,int) ;

__attribute__((used)) static inline void __tl_conn_store_raw_data (const void *buf, int len) {
  assert (write_out (&TL_OUT_CONN->Out, buf, len) == len);
}
