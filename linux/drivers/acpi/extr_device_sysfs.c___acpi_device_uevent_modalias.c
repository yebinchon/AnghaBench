
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobj_uevent_env {int buflen; int * buf; } ;
struct TYPE_4__ {int of_compatible; } ;
struct TYPE_3__ {int ids; } ;
struct acpi_device {TYPE_2__ data; TYPE_1__ pnp; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*) ;
 int create_of_modalias (struct acpi_device*,int *,int) ;
 int create_pnp_modalias (struct acpi_device*,int *,int) ;
 scalar_t__ list_empty (int *) ;

int __acpi_device_uevent_modalias(struct acpi_device *adev,
      struct kobj_uevent_env *env)
{
 int len;

 if (!adev)
  return -ENODEV;

 if (list_empty(&adev->pnp.ids))
  return 0;

 if (add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;

 len = create_pnp_modalias(adev, &env->buf[env->buflen - 1],
      sizeof(env->buf) - env->buflen);
 if (len < 0)
  return len;

 env->buflen += len;
 if (!adev->data.of_compatible)
  return 0;

 if (len > 0 && add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;

 len = create_of_modalias(adev, &env->buf[env->buflen - 1],
     sizeof(env->buf) - env->buflen);
 if (len < 0)
  return len;

 env->buflen += len;

 return 0;
}
