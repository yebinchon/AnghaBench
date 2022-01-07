
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_rptr; scalar_t__ log_wptr; long long log_endw; long long log_start; } ;


 TYPE_1__ W ;
 int assert (long long) ;
 long long log_pos ;

long long log_write_pos (void) {
  if (W.log_rptr <= W.log_wptr) {
    return log_pos + (W.log_wptr - W.log_rptr);
  } else {
    assert (W.log_endw);
    return log_pos + (W.log_wptr - W.log_start) + (W.log_endw - W.log_rptr);
  }
}
