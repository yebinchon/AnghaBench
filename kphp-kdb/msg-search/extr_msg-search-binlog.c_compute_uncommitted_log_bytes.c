
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ log_endw ;
 int log_rptr ;
 scalar_t__ log_start ;
 int log_wptr ;

int compute_uncommitted_log_bytes (void) {
  int log_uncommitted = log_wptr - log_rptr;
  if (log_uncommitted < 0) {
    log_uncommitted += log_endw - log_start;
  }
  return log_uncommitted;
}
