
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int dump_registered; TYPE_1__* ops; scalar_t__ dump_active; int fadump_enabled; } ;
struct TYPE_5__ {int (* fadump_unregister ) (TYPE_2__*) ;} ;


 int EINVAL ;
 int EPERM ;
 int fadump_mutex ;
 TYPE_2__ fw_dump ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int register_fadump () ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static ssize_t fadump_register_store(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t count)
{
 int ret = 0;
 int input = -1;

 if (!fw_dump.fadump_enabled || fw_dump.dump_active)
  return -EPERM;

 if (kstrtoint(buf, 0, &input))
  return -EINVAL;

 mutex_lock(&fadump_mutex);

 switch (input) {
 case 0:
  if (fw_dump.dump_registered == 0) {
   goto unlock_out;
  }


  pr_debug("Un-register firmware-assisted dump\n");
  fw_dump.ops->fadump_unregister(&fw_dump);
  break;
 case 1:
  if (fw_dump.dump_registered == 1) {

   fw_dump.ops->fadump_unregister(&fw_dump);
  }

  ret = register_fadump();
  break;
 default:
  ret = -EINVAL;
  break;
 }

unlock_out:
 mutex_unlock(&fadump_mutex);
 return ret < 0 ? ret : count;
}
