
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CW_Precision ;
 int EXCEPTION (int) ;
 int SW_C1 ;
 int control_word ;
 int partial_status ;

int set_precision_flag(int flags)
{
 if (control_word & CW_Precision) {
  partial_status &= ~(SW_C1 & flags);
  partial_status |= flags;
  return 0;
 } else {
  EXCEPTION(flags);
  return 1;
 }
}
