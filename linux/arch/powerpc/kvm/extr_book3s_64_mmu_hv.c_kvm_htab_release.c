
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_htab_ctx {int flags; TYPE_2__* kvm; } ;
struct inode {int dummy; } ;
struct file {struct kvm_htab_ctx* private_data; } ;
struct TYPE_3__ {int hpte_mod_interest; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int KVM_GET_HTAB_WRITE ;
 int atomic_dec (int *) ;
 int kfree (struct kvm_htab_ctx*) ;
 int kvm_put_kvm (TYPE_2__*) ;

__attribute__((used)) static int kvm_htab_release(struct inode *inode, struct file *filp)
{
 struct kvm_htab_ctx *ctx = filp->private_data;

 filp->private_data = ((void*)0);
 if (!(ctx->flags & KVM_GET_HTAB_WRITE))
  atomic_dec(&ctx->kvm->arch.hpte_mod_interest);
 kvm_put_kvm(ctx->kvm);
 kfree(ctx);
 return 0;
}
