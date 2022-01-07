
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int xen_read_msr_safe (unsigned int,int*) ;

__attribute__((used)) static u64 xen_read_msr(unsigned int msr)
{




 int err;

 return xen_read_msr_safe(msr, &err);
}
