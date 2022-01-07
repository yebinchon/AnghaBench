
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CPUID_MAJOR ;
 int MKDEV (int ,unsigned int) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int cpuid_class ;
 struct device* device_create (int ,int *,int ,int *,char*,unsigned int) ;

__attribute__((used)) static int cpuid_device_create(unsigned int cpu)
{
 struct device *dev;

 dev = device_create(cpuid_class, ((void*)0), MKDEV(CPUID_MAJOR, cpu), ((void*)0),
       "cpu%d", cpu);
 return PTR_ERR_OR_ZERO(dev);
}
