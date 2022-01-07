
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int cpu_to_be32 (int ) ;
 int cpu_to_le32 (int ) ;
 TYPE_1__ ehdr ;

__attribute__((used)) static uint32_t cpu_to_elf32(uint32_t val)
{
 if (ehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return cpu_to_le32(val);
 else
  return cpu_to_be32(val);
}
