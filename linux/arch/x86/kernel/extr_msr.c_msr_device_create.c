
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MKDEV (int ,unsigned int) ;
 int MSR_MAJOR ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* device_create (int ,int *,int ,int *,char*,unsigned int) ;
 int msr_class ;

__attribute__((used)) static int msr_device_create(unsigned int cpu)
{
 struct device *dev;

 dev = device_create(msr_class, ((void*)0), MKDEV(MSR_MAJOR, cpu), ((void*)0),
       "msr%d", cpu);
 return PTR_ERR_OR_ZERO(dev);
}
