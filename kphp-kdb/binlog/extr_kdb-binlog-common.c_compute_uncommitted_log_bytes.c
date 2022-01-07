
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_wptr; int log_rptr; scalar_t__ log_start; scalar_t__ log_endw; } ;


 TYPE_1__ W ;

int compute_uncommitted_log_bytes (void) {
  int log_uncommitted = W.log_wptr - W.log_rptr;
  if (log_uncommitted < 0) {
    log_uncommitted += W.log_endw - W.log_start;
  }
  return log_uncommitted;
}
