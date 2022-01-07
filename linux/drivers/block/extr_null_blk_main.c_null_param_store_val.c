
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int kstrtoint (char const*,int,int*) ;

__attribute__((used)) static int null_param_store_val(const char *str, int *val, int min, int max)
{
 int ret, new_val;

 ret = kstrtoint(str, 10, &new_val);
 if (ret)
  return -EINVAL;

 if (new_val < min || new_val > max)
  return -EINVAL;

 *val = new_val;
 return 0;
}
