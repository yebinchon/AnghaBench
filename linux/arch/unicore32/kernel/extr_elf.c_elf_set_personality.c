
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_hdr {int dummy; } ;


 unsigned int PER_LINUX ;
 int set_personality (unsigned int) ;

void elf_set_personality(const struct elf32_hdr *x)
{
 unsigned int personality = PER_LINUX;

 set_personality(personality);
}
