
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,unsigned int) ;
 int MSR_MAJOR ;
 int device_destroy (int ,int ) ;
 int msr_class ;

__attribute__((used)) static int msr_device_destroy(unsigned int cpu)
{
 device_destroy(msr_class, MKDEV(MSR_MAJOR, cpu));
 return 0;
}
