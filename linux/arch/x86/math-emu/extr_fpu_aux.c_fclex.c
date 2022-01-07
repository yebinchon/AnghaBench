
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SW_Backward ;
 int SW_Denorm_Op ;
 int SW_Invalid ;
 int SW_Overflow ;
 int SW_Precision ;
 int SW_Stack_Fault ;
 int SW_Summary ;
 int SW_Underflow ;
 int SW_Zero_Div ;
 int no_ip_update ;
 int partial_status ;

__attribute__((used)) static void fclex(void)
{
 partial_status &=
     ~(SW_Backward | SW_Summary | SW_Stack_Fault | SW_Precision |
       SW_Underflow | SW_Overflow | SW_Zero_Div | SW_Denorm_Op |
       SW_Invalid);
 no_ip_update = 1;
}
