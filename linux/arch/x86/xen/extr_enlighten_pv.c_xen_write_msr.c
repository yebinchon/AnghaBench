
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_write_msr_safe (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void xen_write_msr(unsigned int msr, unsigned low, unsigned high)
{




 xen_write_msr_safe(msr, low, high);
}
