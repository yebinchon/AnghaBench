
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_TLBMISC ;
 unsigned long RDCTL (int ) ;
 unsigned long TLBMISC_PID ;
 unsigned long TLBMISC_WAY ;

__attribute__((used)) static void get_misc_and_pid(unsigned long *misc, unsigned long *pid)
{
 *misc = RDCTL(CTL_TLBMISC);
 *misc &= (TLBMISC_PID | TLBMISC_WAY);
 *pid = *misc & TLBMISC_PID;
}
