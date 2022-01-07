
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct vfsmount {int dummy; } ;
struct spu_gang {int aff_mutex; } ;
struct spu_context {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_ctx; struct spu_gang* i_gang; } ;


 int CAP_SYS_NICE ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 scalar_t__ IS_ERR (struct spu_context*) ;
 int PTR_ERR (struct spu_context*) ;
 TYPE_1__* SPUFS_I (struct inode*) ;
 int SPU_CREATE_AFFINITY_MEM ;
 int SPU_CREATE_AFFINITY_SPU ;
 int SPU_CREATE_ISOLATE ;
 int SPU_CREATE_NOSCHED ;
 int WARN_ON (int ) ;
 int capable (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int isolated_loader ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_spu_context (struct spu_context*) ;
 struct spu_context* spufs_assert_affinity (int,struct spu_gang*,struct file*) ;
 int spufs_context_open (struct path*) ;
 int spufs_mkdir (struct inode*,struct dentry*,int,int) ;
 int spufs_rmdir (struct inode*,struct dentry*) ;
 int spufs_set_affinity (int,int ,struct spu_context*) ;

__attribute__((used)) static int
spufs_create_context(struct inode *inode, struct dentry *dentry,
   struct vfsmount *mnt, int flags, umode_t mode,
   struct file *aff_filp)
{
 int ret;
 int affinity;
 struct spu_gang *gang;
 struct spu_context *neighbor;
 struct path path = {.mnt = mnt, .dentry = dentry};

 if ((flags & SPU_CREATE_NOSCHED) &&
     !capable(CAP_SYS_NICE))
  return -EPERM;

 if ((flags & (SPU_CREATE_NOSCHED | SPU_CREATE_ISOLATE))
     == SPU_CREATE_ISOLATE)
  return -EINVAL;

 if ((flags & SPU_CREATE_ISOLATE) && !isolated_loader)
  return -ENODEV;

 gang = ((void*)0);
 neighbor = ((void*)0);
 affinity = flags & (SPU_CREATE_AFFINITY_MEM | SPU_CREATE_AFFINITY_SPU);
 if (affinity) {
  gang = SPUFS_I(inode)->i_gang;
  if (!gang)
   return -EINVAL;
  mutex_lock(&gang->aff_mutex);
  neighbor = spufs_assert_affinity(flags, gang, aff_filp);
  if (IS_ERR(neighbor)) {
   ret = PTR_ERR(neighbor);
   goto out_aff_unlock;
  }
 }

 ret = spufs_mkdir(inode, dentry, flags, mode & 0777);
 if (ret)
  goto out_aff_unlock;

 if (affinity) {
  spufs_set_affinity(flags, SPUFS_I(d_inode(dentry))->i_ctx,
        neighbor);
  if (neighbor)
   put_spu_context(neighbor);
 }

 ret = spufs_context_open(&path);
 if (ret < 0)
  WARN_ON(spufs_rmdir(inode, dentry));

out_aff_unlock:
 if (affinity)
  mutex_unlock(&gang->aff_mutex);
 return ret;
}
