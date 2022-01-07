
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct spufs_tree_descr {int mode; int size; int ops; scalar_t__* name; } ;
struct spu_context {int dummy; } ;
struct dentry {int d_sb; } ;


 int ENOMEM ;
 struct dentry* d_alloc_name (struct dentry*,scalar_t__*) ;
 int spufs_new_file (int ,struct dentry*,int ,int,int ,struct spu_context*) ;

__attribute__((used)) static int spufs_fill_dir(struct dentry *dir,
  const struct spufs_tree_descr *files, umode_t mode,
  struct spu_context *ctx)
{
 while (files->name && files->name[0]) {
  int ret;
  struct dentry *dentry = d_alloc_name(dir, files->name);
  if (!dentry)
   return -ENOMEM;
  ret = spufs_new_file(dir->d_sb, dentry, files->ops,
     files->mode & mode, files->size, ctx);
  if (ret)
   return ret;
  files++;
 }
 return 0;
}
