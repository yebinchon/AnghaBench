
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe {scalar_t__ plen; scalar_t__ pbuffer; int * shared_ptr; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int e_ident; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int ELFMAG ;
 int ENODEV ;
 int ENOEXEC ;
 int SELFMAG ;
 int aprp_cpu_index () ;
 struct vpe* get_vpe (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int pr_warn (char*) ;
 int vfree (scalar_t__) ;
 scalar_t__ vpe_elfload (struct vpe*) ;
 int vpe_run (struct vpe*) ;

__attribute__((used)) static int vpe_release(struct inode *inode, struct file *filp)
{
 pr_warn("VPE loader: ELF load failed.\n");
 return -ENOEXEC;

}
