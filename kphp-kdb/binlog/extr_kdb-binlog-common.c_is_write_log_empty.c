
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_rptr; scalar_t__ log_start; scalar_t__ log_wptr; } ;


 TYPE_1__ W ;

int is_write_log_empty (void) {
  return W.log_rptr == W.log_start && W.log_wptr == W.log_start;
}
