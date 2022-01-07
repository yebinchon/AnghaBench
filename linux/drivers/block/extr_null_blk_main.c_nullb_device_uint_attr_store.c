
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static ssize_t nullb_device_uint_attr_store(unsigned int *val,
 const char *page, size_t count)
{
 unsigned int tmp;
 int result;

 result = kstrtouint(page, 0, &tmp);
 if (result)
  return result;

 *val = tmp;
 return count;
}
