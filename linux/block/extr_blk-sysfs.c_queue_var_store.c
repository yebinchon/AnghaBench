
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long UINT_MAX ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
queue_var_store(unsigned long *var, const char *page, size_t count)
{
 int err;
 unsigned long v;

 err = kstrtoul(page, 10, &v);
 if (err || v > UINT_MAX)
  return -EINVAL;

 *var = v;

 return count;
}
