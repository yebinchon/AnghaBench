
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__* CSR_TIMER1_CNTL ;

__attribute__((used)) static int ckevt_dc21285_shutdown(struct clock_event_device *c)
{
 *CSR_TIMER1_CNTL = 0;
 return 0;
}
