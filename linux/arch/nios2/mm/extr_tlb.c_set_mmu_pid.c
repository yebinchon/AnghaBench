
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_TLBMISC ;
 unsigned long RDCTL (int ) ;
 unsigned long TLBMISC_PID_MASK ;
 unsigned long TLBMISC_PID_SHIFT ;
 unsigned long TLBMISC_WAY ;
 int WRCTL (int ,unsigned long) ;

void set_mmu_pid(unsigned long pid)
{
 unsigned long tlbmisc;

 tlbmisc = RDCTL(CTL_TLBMISC);
 tlbmisc = (tlbmisc & TLBMISC_WAY);
 tlbmisc |= (pid & TLBMISC_PID_MASK) << TLBMISC_PID_SHIFT;
 WRCTL(CTL_TLBMISC, tlbmisc);
}
