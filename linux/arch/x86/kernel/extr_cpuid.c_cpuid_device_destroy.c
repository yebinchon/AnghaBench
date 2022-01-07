
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_MAJOR ;
 int MKDEV (int ,unsigned int) ;
 int cpuid_class ;
 int device_destroy (int ,int ) ;

__attribute__((used)) static int cpuid_device_destroy(unsigned int cpu)
{
 device_destroy(cpuid_class, MKDEV(CPUID_MAJOR, cpu));
 return 0;
}
