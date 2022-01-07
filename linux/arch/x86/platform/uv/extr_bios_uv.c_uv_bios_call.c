
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;


 int BIOS_STATUS_ABORT ;
 int __efi_uv_runtime_lock ;
 int __uv_bios_call (int,int ,int ,int ,int ,int ) ;
 scalar_t__ down_interruptible (int *) ;
 int up (int *) ;

s64 uv_bios_call(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3, u64 a4, u64 a5)
{
 s64 ret;

 if (down_interruptible(&__efi_uv_runtime_lock))
  return BIOS_STATUS_ABORT;

 ret = __uv_bios_call(which, a1, a2, a3, a4, a5);
 up(&__efi_uv_runtime_lock);

 return ret;
}
