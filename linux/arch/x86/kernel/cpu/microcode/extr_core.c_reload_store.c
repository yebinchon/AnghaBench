
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;
struct TYPE_6__ {int cpu_index; } ;
struct TYPE_5__ {int (* request_microcode_fw ) (int,int *,int) ;} ;
struct TYPE_4__ {int dev; } ;


 int UCODE_NEW ;
 int UCODE_OK ;
 TYPE_3__ boot_cpu_data ;
 size_t check_online_cpus () ;
 int get_online_cpus () ;
 size_t kstrtoul (char const*,int ,unsigned long*) ;
 int microcode_mutex ;
 TYPE_2__* microcode_ops ;
 TYPE_1__* microcode_pdev ;
 size_t microcode_reload_late () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;
 int stub1 (int,int *,int) ;

__attribute__((used)) static ssize_t reload_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 enum ucode_state tmp_ret = UCODE_OK;
 int bsp = boot_cpu_data.cpu_index;
 unsigned long val;
 ssize_t ret = 0;

 ret = kstrtoul(buf, 0, &val);
 if (ret)
  return ret;

 if (val != 1)
  return size;

 tmp_ret = microcode_ops->request_microcode_fw(bsp, &microcode_pdev->dev, 1);
 if (tmp_ret != UCODE_NEW)
  return size;

 get_online_cpus();

 ret = check_online_cpus();
 if (ret)
  goto put;

 mutex_lock(&microcode_mutex);
 ret = microcode_reload_late();
 mutex_unlock(&microcode_mutex);

put:
 put_online_cpus();

 if (ret >= 0)
  ret = size;

 return ret;
}
