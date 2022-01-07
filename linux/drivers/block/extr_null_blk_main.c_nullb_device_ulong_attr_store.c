
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t nullb_device_ulong_attr_store(unsigned long *val,
 const char *page, size_t count)
{
 int result;
 unsigned long tmp;

 result = kstrtoul(page, 0, &tmp);
 if (result)
  return result;

 *val = tmp;
 return count;
}
