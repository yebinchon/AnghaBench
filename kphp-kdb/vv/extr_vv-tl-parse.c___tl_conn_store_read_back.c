
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Out; } ;


 TYPE_1__* TL_OUT_CONN ;
 int assert (int) ;
 int read_back (int *,int ,int) ;

__attribute__((used)) static inline void __tl_conn_store_read_back (int len) {
  assert (read_back (&TL_OUT_CONN->Out, 0, len) == len);
}
