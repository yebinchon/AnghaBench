
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int ENODEV ;

__attribute__((used)) static int cpu_instance_compare(phandle nd, int instance, void *_arg)
{
 int desired_instance = (int) _arg;

 if (instance == desired_instance)
  return 0;
 return -ENODEV;
}
