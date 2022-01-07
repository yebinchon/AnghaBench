
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int name; } ;


 int CW_Exceptions ;
 int EX_INTERNAL ;
 int EX_Precision ;
 int FPU_info ;
 int FPU_printall () ;
 int RE_ENTRANT_CHECK_OFF ;
 int RE_ENTRANT_CHECK_ON ;
 int SIGFPE ;
 int SW_Backward ;
 int SW_C1 ;
 int SW_Exc_Mask ;
 int SW_Stack_Fault ;
 int SW_Summary ;
 int control_word ;
 TYPE_1__* exception_names ;
 int math_abort (int ,int ) ;
 int partial_status ;
 int printk (char*,int) ;

void FPU_exception(int n)
{
 int i, int_type;

 int_type = 0;
 if (n & EX_INTERNAL) {
  int_type = n - EX_INTERNAL;
  n = EX_INTERNAL;

  partial_status |= (SW_Exc_Mask | SW_Summary | SW_Backward);
 } else {

  n &= (SW_Exc_Mask);

  partial_status |= n;

  if (partial_status & ~control_word & CW_Exceptions)
   partial_status |= (SW_Summary | SW_Backward);
  if (n & (SW_Stack_Fault | EX_Precision)) {
   if (!(n & SW_C1))


    partial_status &= ~SW_C1;
  }
 }

 RE_ENTRANT_CHECK_OFF;
 if ((~control_word & n & CW_Exceptions) || (n == EX_INTERNAL)) {

  for (i = 0; exception_names[i].type; i++)
   if ((exception_names[i].type & n) ==
       exception_names[i].type)
    break;

  if (exception_names[i].type) {



  } else
   printk("FPU emulator: Unknown Exception: 0x%04x!\n", n);

  if (n == EX_INTERNAL) {
   printk("FPU emulator: Internal error type 0x%04x\n",
          int_type);
   FPU_printall();
  }
 }
 RE_ENTRANT_CHECK_ON;





}
