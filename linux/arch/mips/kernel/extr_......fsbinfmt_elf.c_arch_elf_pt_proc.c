
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct elfhdr {int dummy; } ;
struct elf_phdr {int dummy; } ;
struct arch_elf_state {int dummy; } ;



__attribute__((used)) static inline int arch_elf_pt_proc(struct elfhdr *ehdr,
       struct elf_phdr *phdr,
       struct file *elf, bool is_interp,
       struct arch_elf_state *state)
{

 return 0;
}
