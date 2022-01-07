
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be32_to_cpu (int ) ;
 TYPE_1__ ehdr ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static uint32_t elf32_to_cpu(uint32_t val)
{
 if (ehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return le32_to_cpu(val);
 else
  return be32_to_cpu(val);
}
