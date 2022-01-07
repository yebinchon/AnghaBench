
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CW_Precision ;
 int EXCEPTION (int) ;
 int EX_Precision ;
 int SW_C1 ;
 int SW_Precision ;
 int control_word ;
 int partial_status ;

void set_precision_flag_up(void)
{
 if (control_word & CW_Precision)
  partial_status |= (SW_Precision | SW_C1);
 else
  EXCEPTION(EX_Precision | SW_C1);
}
