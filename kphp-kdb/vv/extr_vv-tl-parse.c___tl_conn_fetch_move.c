
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int In; } ;


 TYPE_1__* TL_IN_CONN ;
 int advance_skip_read_ptr (int *,int) ;
 int assert (int) ;

__attribute__((used)) static inline void __tl_conn_fetch_move (int len) {
  if (len >= 0) {
    assert (advance_skip_read_ptr (&TL_IN_CONN->In, len) == len);
  } else {
    assert (0);
  }
}
