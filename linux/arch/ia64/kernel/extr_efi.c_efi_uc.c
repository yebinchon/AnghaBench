
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attribute; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 int EFI_MEMORY_UC ;

__attribute__((used)) static inline int
efi_uc(efi_memory_desc_t *md)
{
 return (md->attribute & EFI_MEMORY_UC);
}
