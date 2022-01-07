
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int option; scalar_t__ for_parse; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 scalar_t__ sysfs_streq (char const*,int ) ;
 TYPE_1__* vmentry_l1d_param ;

__attribute__((used)) static int vmentry_l1d_flush_parse(const char *s)
{
 unsigned int i;

 if (s) {
  for (i = 0; i < ARRAY_SIZE(vmentry_l1d_param); i++) {
   if (vmentry_l1d_param[i].for_parse &&
       sysfs_streq(s, vmentry_l1d_param[i].option))
    return i;
  }
 }
 return -EINVAL;
}
