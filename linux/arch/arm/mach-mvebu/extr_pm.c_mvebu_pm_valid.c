
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 scalar_t__ PM_SUSPEND_MEM ;
 scalar_t__ PM_SUSPEND_STANDBY ;
 int * mvebu_board_pm_enter ;

__attribute__((used)) static int mvebu_pm_valid(suspend_state_t state)
{
 if (state == PM_SUSPEND_STANDBY)
  return 1;

 if (state == PM_SUSPEND_MEM && mvebu_board_pm_enter != ((void*)0))
  return 1;

 return 0;
}
