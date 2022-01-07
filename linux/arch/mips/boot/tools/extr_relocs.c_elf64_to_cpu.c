
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be64_to_cpu (int ) ;
 TYPE_1__ ehdr ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static uint64_t elf64_to_cpu(uint64_t val)
{
 if (ehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return le64_to_cpu(val);
 else
  return be64_to_cpu(val);
}
