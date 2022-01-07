
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdt_resource {unsigned int mon_scale; } ;
struct kernfs_open_file {TYPE_2__* kn; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_6__ {int x86_cache_size; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {struct rdt_resource* priv; } ;


 int EINVAL ;
 TYPE_3__ boot_cpu_data ;
 int kstrtouint (char*,int ,unsigned int*) ;
 unsigned int resctrl_cqm_threshold ;

__attribute__((used)) static ssize_t max_threshold_occ_write(struct kernfs_open_file *of,
           char *buf, size_t nbytes, loff_t off)
{
 struct rdt_resource *r = of->kn->parent->priv;
 unsigned int bytes;
 int ret;

 ret = kstrtouint(buf, 0, &bytes);
 if (ret)
  return ret;

 if (bytes > (boot_cpu_data.x86_cache_size * 1024))
  return -EINVAL;

 resctrl_cqm_threshold = bytes / r->mon_scale;

 return nbytes;
}
