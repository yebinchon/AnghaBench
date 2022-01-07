
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ patch_id; int data_code; } ;
struct microcode_amd {TYPE_1__ hdr; } ;


 int MSR_AMD64_PATCH_LEVEL ;
 int MSR_AMD64_PATCH_LOADER ;
 int native_rdmsr (int ,scalar_t__,scalar_t__) ;
 int native_wrmsrl (int ,int ) ;

__attribute__((used)) static int __apply_microcode_amd(struct microcode_amd *mc)
{
 u32 rev, dummy;

 native_wrmsrl(MSR_AMD64_PATCH_LOADER, (u64)(long)&mc->hdr.data_code);


 native_rdmsr(MSR_AMD64_PATCH_LEVEL, rev, dummy);
 if (rev != mc->hdr.patch_id)
  return -1;

 return 0;
}
