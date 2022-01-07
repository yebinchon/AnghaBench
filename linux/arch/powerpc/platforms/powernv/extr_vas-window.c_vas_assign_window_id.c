
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int EAGAIN ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ VAS_WINDOWS_PER_CHIP ;
 int ida_alloc_max (struct ida*,scalar_t__,int ) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static int vas_assign_window_id(struct ida *ida)
{
 int winid = ida_alloc_max(ida, VAS_WINDOWS_PER_CHIP - 1, GFP_KERNEL);

 if (winid == -ENOSPC) {
  pr_err("Too many (%d) open windows\n", VAS_WINDOWS_PER_CHIP);
  return -EAGAIN;
 }

 return winid;
}
