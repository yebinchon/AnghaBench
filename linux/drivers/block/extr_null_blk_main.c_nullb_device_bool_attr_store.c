
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int kstrtobool (char const*,int*) ;

__attribute__((used)) static ssize_t nullb_device_bool_attr_store(bool *val, const char *page,
 size_t count)
{
 bool tmp;
 int result;

 result = kstrtobool(page, &tmp);
 if (result)
  return result;

 *val = tmp;
 return count;
}
