
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be16_to_cpu (int ) ;
 TYPE_1__ ehdr ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static uint16_t elf16_to_cpu(uint16_t val)
{
 if (ehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return le16_to_cpu(val);
 else
  return be16_to_cpu(val);
}
