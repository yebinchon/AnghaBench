
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int * i_private; } ;


 int AT_FDCWD ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int LOOKUP_DIRECTORY ;
 int PTR_ERR (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int done_path_create (struct path*,struct dentry*) ;
 struct dentry* kern_path_create (int ,char const*,struct path*,int ) ;
 int thread ;
 int vfs_mkdir (TYPE_1__*,struct dentry*,int ) ;

__attribute__((used)) static int dev_mkdir(const char *name, umode_t mode)
{
 struct dentry *dentry;
 struct path path;
 int err;

 dentry = kern_path_create(AT_FDCWD, name, &path, LOOKUP_DIRECTORY);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 err = vfs_mkdir(d_inode(path.dentry), dentry, mode);
 if (!err)

  d_inode(dentry)->i_private = &thread;
 done_path_create(&path, dentry);
 return err;
}
