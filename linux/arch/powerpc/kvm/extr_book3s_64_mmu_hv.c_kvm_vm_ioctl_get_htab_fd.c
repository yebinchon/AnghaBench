
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_htab_ctx {int flags; int first_pass; int index; struct kvm* kvm; } ;
struct kvm_get_htab_fd {int flags; int start_index; } ;
struct TYPE_2__ {int hpte_mod_interest; } ;
struct kvm {int slots_lock; int srcu; TYPE_1__ arch; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_GET_HTAB_BOLTED_ONLY ;
 int KVM_GET_HTAB_WRITE ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int O_WRONLY ;
 int anon_inode_getfd (char*,int *,struct kvm_htab_ctx*,int) ;
 int atomic_inc (int *) ;
 int kfree (struct kvm_htab_ctx*) ;
 int kvm_get_kvm (struct kvm*) ;
 int kvm_htab_fops ;
 int kvm_put_kvm (struct kvm*) ;
 struct kvm_htab_ctx* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_srcu_expedited (int *) ;

int kvm_vm_ioctl_get_htab_fd(struct kvm *kvm, struct kvm_get_htab_fd *ghf)
{
 int ret;
 struct kvm_htab_ctx *ctx;
 int rwflag;


 if (ghf->flags & ~(KVM_GET_HTAB_BOLTED_ONLY | KVM_GET_HTAB_WRITE))
  return -EINVAL;
 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 kvm_get_kvm(kvm);
 ctx->kvm = kvm;
 ctx->index = ghf->start_index;
 ctx->flags = ghf->flags;
 ctx->first_pass = 1;

 rwflag = (ghf->flags & KVM_GET_HTAB_WRITE) ? O_WRONLY : O_RDONLY;
 ret = anon_inode_getfd("kvm-htab", &kvm_htab_fops, ctx, rwflag | O_CLOEXEC);
 if (ret < 0) {
  kfree(ctx);
  kvm_put_kvm(kvm);
  return ret;
 }

 if (rwflag == O_RDONLY) {
  mutex_lock(&kvm->slots_lock);
  atomic_inc(&kvm->arch.hpte_mod_interest);

  synchronize_srcu_expedited(&kvm->srcu);
  mutex_unlock(&kvm->slots_lock);
 }

 return ret;
}
