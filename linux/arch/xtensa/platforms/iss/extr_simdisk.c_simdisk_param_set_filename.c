
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int EINVAL ;
 char const** filename ;
 scalar_t__ n_files ;

__attribute__((used)) static int simdisk_param_set_filename(const char *val,
  const struct kernel_param *kp)
{
 if (n_files < ARRAY_SIZE(filename))
  filename[n_files++] = val;
 else
  return -EINVAL;
 return 0;
}
