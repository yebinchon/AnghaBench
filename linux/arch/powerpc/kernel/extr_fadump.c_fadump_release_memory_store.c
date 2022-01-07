
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int dump_active; } ;


 size_t EINVAL ;
 size_t EPERM ;
 int fadump_invalidate_release_mem () ;
 TYPE_1__ fw_dump ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int vmcore_cleanup () ;

__attribute__((used)) static ssize_t fadump_release_memory_store(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t count)
{
 int input = -1;

 if (!fw_dump.dump_active)
  return -EPERM;

 if (kstrtoint(buf, 0, &input))
  return -EINVAL;

 if (input == 1) {







  fadump_invalidate_release_mem();

 } else
  return -EINVAL;
 return count;
}
