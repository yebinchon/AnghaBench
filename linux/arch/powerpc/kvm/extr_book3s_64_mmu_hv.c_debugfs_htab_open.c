
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
struct inode {struct kvm* i_private; } ;
struct file {struct debugfs_htab_state* private_data; } ;
struct debugfs_htab_state {int mutex; struct kvm* kvm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kvm_get_kvm (struct kvm*) ;
 struct debugfs_htab_state* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int debugfs_htab_open(struct inode *inode, struct file *file)
{
 struct kvm *kvm = inode->i_private;
 struct debugfs_htab_state *p;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 kvm_get_kvm(kvm);
 p->kvm = kvm;
 mutex_init(&p->mutex);
 file->private_data = p;

 return nonseekable_open(inode, file);
}
