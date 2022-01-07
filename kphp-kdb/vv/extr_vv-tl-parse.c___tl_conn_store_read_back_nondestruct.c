
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Out; } ;


 TYPE_1__* TL_OUT_CONN ;
 int assert (int) ;
 int read_back_nondestruct (int *,void*,int) ;

__attribute__((used)) static inline void __tl_conn_store_read_back_nondestruct (void *buf, int len) {
  assert (read_back_nondestruct (&TL_OUT_CONN->Out, buf, len) == len);
}
