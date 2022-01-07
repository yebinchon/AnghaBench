
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_ioctl_version_data {scalar_t__ impl_id; int gen_caps; } ;


 int TEE_GEN_CAP_GP ;
 scalar_t__ TEE_IMPL_ID_OPTEE ;

__attribute__((used)) static int ftpm_tee_match(struct tee_ioctl_version_data *ver, const void *data)
{



 if ((ver->impl_id == TEE_IMPL_ID_OPTEE) &&
  (ver->gen_caps & TEE_GEN_CAP_GP))
  return 1;
 else
  return 0;
}
