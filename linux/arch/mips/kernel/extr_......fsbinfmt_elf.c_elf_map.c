
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct elf_phdr {unsigned long p_filesz; unsigned long p_offset; int p_vaddr; } ;
struct TYPE_3__ {int comm; } ;


 int BAD_ADDR (unsigned long) ;
 int EEXIST ;
 unsigned long ELF_PAGEALIGN (unsigned long) ;
 unsigned long ELF_PAGEOFFSET (int ) ;
 unsigned long ELF_PAGESTART (unsigned long) ;
 int MAP_FIXED_NOREPLACE ;
 int PTR_ERR (void*) ;
 TYPE_1__* current ;
 int pr_info (char*,int ,int ,void*) ;
 int task_pid_nr (TYPE_1__*) ;
 unsigned long vm_mmap (struct file*,unsigned long,unsigned long,int,int,unsigned long) ;
 int vm_munmap (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long elf_map(struct file *filep, unsigned long addr,
  const struct elf_phdr *eppnt, int prot, int type,
  unsigned long total_size)
{
 unsigned long map_addr;
 unsigned long size = eppnt->p_filesz + ELF_PAGEOFFSET(eppnt->p_vaddr);
 unsigned long off = eppnt->p_offset - ELF_PAGEOFFSET(eppnt->p_vaddr);
 addr = ELF_PAGESTART(addr);
 size = ELF_PAGEALIGN(size);



 if (!size)
  return addr;
 if (total_size) {
  total_size = ELF_PAGEALIGN(total_size);
  map_addr = vm_mmap(filep, addr, total_size, prot, type, off);
  if (!BAD_ADDR(map_addr))
   vm_munmap(map_addr+size, total_size-size);
 } else
  map_addr = vm_mmap(filep, addr, size, prot, type, off);

 if ((type & MAP_FIXED_NOREPLACE) &&
     PTR_ERR((void *)map_addr) == -EEXIST)
  pr_info("%d (%s): Uhuuh, elf segment at %px requested but the memory is mapped already\n",
   task_pid_nr(current), current->comm, (void *)addr);

 return(map_addr);
}
