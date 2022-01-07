
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int dummy; } ;
struct arch_elf_state {int dummy; } ;



__attribute__((used)) static inline int arch_check_elf(struct elfhdr *ehdr, bool has_interp,
     struct elfhdr *interp_ehdr,
     struct arch_elf_state *state)
{

 return 0;
}
