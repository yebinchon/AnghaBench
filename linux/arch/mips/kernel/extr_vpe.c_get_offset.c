
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long sh_size; scalar_t__ sh_addralign; } ;
typedef TYPE_1__ Elf_Shdr ;


 long ALIGN (unsigned long,int) ;

__attribute__((used)) static long get_offset(unsigned long *size, Elf_Shdr *sechdr)
{
 long ret;

 ret = ALIGN(*size, sechdr->sh_addralign ? : 1);
 *size = ret + sechdr->sh_size;
 return ret;
}
