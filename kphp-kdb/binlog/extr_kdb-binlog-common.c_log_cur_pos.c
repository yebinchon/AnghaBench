
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long log_wptr; long long log_rptr; } ;


 TYPE_1__ R ;
 long long log_pos ;

long long log_cur_pos (void) {
  return log_pos - (R.log_wptr - R.log_rptr);
}
