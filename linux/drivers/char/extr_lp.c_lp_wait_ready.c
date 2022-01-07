
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_mode; } ;


 int EINTR ;
 scalar_t__ IEEE1284_MODE_COMPAT ;
 int LP_ABORT ;
 int LP_F (int) ;
 int current ;
 int lp_check_status (int) ;
 TYPE_1__* lp_table ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int lp_wait_ready(int minor, int nonblock)
{
 int error = 0;


 if (lp_table[minor].current_mode != IEEE1284_MODE_COMPAT) {
  return 0;
 }

 do {
  error = lp_check_status(minor);
  if (error && (nonblock || (LP_F(minor) & LP_ABORT)))
   break;
  if (signal_pending(current)) {
   error = -EINTR;
   break;
  }
 } while (error);
 return error;
}
