
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kref {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* d_parent; } ;


 int ESTALE ;
 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 scalar_t__ kref_get_unless_zero (struct kref*) ;
 int kref_put (struct kref*,void (*) (struct kref*)) ;
 scalar_t__ simple_positive (TYPE_2__*) ;
 int single_open (struct file*,int (*) (struct seq_file*,void*),void*) ;

__attribute__((used)) static int drbd_single_open(struct file *file, int (*show)(struct seq_file *, void *),
                  void *data, struct kref *kref,
    void (*release)(struct kref *))
{
 struct dentry *parent;
 int ret = -ESTALE;



 parent = file->f_path.dentry->d_parent;

 inode_lock(d_inode(parent));

 if (simple_positive(file->f_path.dentry)
 && kref_get_unless_zero(kref))
  ret = 0;
 inode_unlock(d_inode(parent));
 if (!ret) {
  ret = single_open(file, show, data);
  if (ret)
   kref_put(kref, release);
 }
 return ret;
}
