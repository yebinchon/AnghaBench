
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Out; } ;


 int TL_IN_NBIT ;
 TYPE_1__* TL_OUT_CONN ;
 int assert (int) ;
 int nbit_copy_through (int *,int ,int) ;
 int nbit_copy_through_nondestruct (int *,int ,int) ;

__attribute__((used)) static inline void __tl_nbit_conn_copy_through (int len, int advance) {
  if (advance) {
    assert (nbit_copy_through (&TL_OUT_CONN->Out, TL_IN_NBIT, len) == len);
  } else {
    assert (nbit_copy_through_nondestruct (&TL_OUT_CONN->Out, TL_IN_NBIT, len) == len);
  }
}
