
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct debugfs_htab_state* private_data; } ;
struct debugfs_htab_state {int kvm; } ;


 int kfree (struct debugfs_htab_state*) ;
 int kvm_put_kvm (int ) ;

__attribute__((used)) static int debugfs_htab_release(struct inode *inode, struct file *file)
{
 struct debugfs_htab_state *p = file->private_data;

 kvm_put_kvm(p->kvm);
 kfree(p);
 return 0;
}
