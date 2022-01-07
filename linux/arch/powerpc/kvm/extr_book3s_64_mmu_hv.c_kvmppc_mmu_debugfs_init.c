
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_dir; int htab_dentry; } ;
struct kvm {TYPE_1__ arch; } ;


 int debugfs_create_file (char*,int,int ,struct kvm*,int *) ;
 int debugfs_htab_fops ;

void kvmppc_mmu_debugfs_init(struct kvm *kvm)
{
 kvm->arch.htab_dentry = debugfs_create_file("htab", 0400,
          kvm->arch.debugfs_dir, kvm,
          &debugfs_htab_fops);
}
