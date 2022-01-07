
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int type ;
struct s390_load_data {int dummy; } ;
struct kimage {scalar_t__ type; } ;
typedef int entry ;
typedef int crash_size ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 scalar_t__ KEXEC_TYPE_CRASH ;
 scalar_t__ KEXEC_TYPE_DEFAULT ;
 scalar_t__ STARTUP_KDUMP_OFFSET ;
 scalar_t__ STARTUP_NORMAL_OFFSET ;
 TYPE_1__ crashk_res ;
 int kexec_purgatory_get_set_symbol (struct kimage*,char*,scalar_t__*,int,int) ;

__attribute__((used)) static int kexec_file_update_purgatory(struct kimage *image,
           struct s390_load_data *data)
{
 u64 entry, type;
 int ret;

 if (image->type == KEXEC_TYPE_CRASH) {
  entry = STARTUP_KDUMP_OFFSET;
  type = KEXEC_TYPE_CRASH;
 } else {
  entry = STARTUP_NORMAL_OFFSET;
  type = KEXEC_TYPE_DEFAULT;
 }

 ret = kexec_purgatory_get_set_symbol(image, "kernel_entry", &entry,
          sizeof(entry), 0);
 if (ret)
  return ret;

 ret = kexec_purgatory_get_set_symbol(image, "kernel_type", &type,
          sizeof(type), 0);
 if (ret)
  return ret;

 if (image->type == KEXEC_TYPE_CRASH) {
  u64 crash_size;

  ret = kexec_purgatory_get_set_symbol(image, "crash_start",
           &crashk_res.start,
           sizeof(crashk_res.start),
           0);
  if (ret)
   return ret;

  crash_size = crashk_res.end - crashk_res.start + 1;
  ret = kexec_purgatory_get_set_symbol(image, "crash_size",
           &crash_size,
           sizeof(crash_size),
           0);
 }
 return ret;
}
