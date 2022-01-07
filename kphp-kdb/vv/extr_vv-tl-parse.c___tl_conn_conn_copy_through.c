
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int In; } ;
struct TYPE_3__ {int Out; } ;


 TYPE_2__* TL_IN_CONN ;
 TYPE_1__* TL_OUT_CONN ;
 int assert (int) ;
 int copy_through (int *,int *,int) ;
 int copy_through_nondestruct (int *,int *,int) ;

__attribute__((used)) static inline void __tl_conn_conn_copy_through (int len, int advance) {
  if (advance) {
    assert (copy_through (&TL_OUT_CONN->Out, &TL_IN_CONN->In, len) == len);
  } else {
    assert (copy_through_nondestruct (&TL_OUT_CONN->Out, &TL_IN_CONN->In, len) == len);
  }
}
