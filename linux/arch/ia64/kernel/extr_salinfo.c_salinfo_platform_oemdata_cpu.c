
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_platform_oemdata_parms {int oemdata_size; int oemdata; int efi_guid; } ;


 long salinfo_platform_oemdata (int ,int ,int ) ;

__attribute__((used)) static long
salinfo_platform_oemdata_cpu(void *context)
{
 struct salinfo_platform_oemdata_parms *parms = context;

 return salinfo_platform_oemdata(parms->efi_guid, parms->oemdata, parms->oemdata_size);
}
