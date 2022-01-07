
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attribute; int type; } ;
typedef TYPE_1__ efi_memory_desc_t ;







 int EFI_MEMORY_WB ;

__attribute__((used)) static int
is_memory_available (efi_memory_desc_t *md)
{
 if (!(md->attribute & EFI_MEMORY_WB))
  return 0;

 switch (md->type) {
       case 129:
       case 128:
       case 132:
       case 131:
       case 130:
  return 1;
 }
 return 0;
}
