
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_time_gran; int s_root; int s_user_ns; struct binderfs_info* s_fs_info; int * s_op; int s_magic; int s_iflags; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int i_mode; int * i_op; int i_ctime; int i_atime; int i_mtime; int * i_fop; int i_ino; } ;
struct TYPE_6__ {scalar_t__ stats_mode; } ;
struct binderfs_info {TYPE_3__ mount_opts; int root_uid; int root_gid; int ipc_ns; } ;
struct binderfs_device {int name; int member_0; } ;
struct TYPE_5__ {TYPE_1__* nsproxy; } ;
struct TYPE_4__ {int ipc_ns; } ;


 int BINDERFS_SUPER_MAGIC ;
 int ENOMEM ;
 int FIRST_INODE ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SB_I_NODEV ;
 int SB_I_NOEXEC ;
 scalar_t__ STATS_GLOBAL ;
 int S_IFDIR ;
 char* binder_devices_param ;
 int binderfs_binder_ctl_create (struct super_block*) ;
 int binderfs_binder_device_create (struct inode*,int *,struct binderfs_device*) ;
 int binderfs_dir_inode_operations ;
 int binderfs_parse_mount_opts (void*,TYPE_3__*) ;
 int binderfs_super_ops ;
 TYPE_2__* current ;
 int current_time (struct inode*) ;
 int d_make_root (struct inode*) ;
 int get_ipc_ns (int ) ;
 int gid_valid (int ) ;
 int init_binder_logs (struct super_block*) ;
 struct binderfs_info* kzalloc (int,int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int set_nlink (struct inode*,int) ;
 int simple_dir_operations ;
 size_t strcspn (char const*,char*) ;
 int strscpy (int ,char const*,size_t) ;
 int uid_valid (int ) ;

__attribute__((used)) static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
{
 int ret;
 struct binderfs_info *info;
 struct inode *inode = ((void*)0);
 struct binderfs_device device_info = { 0 };
 const char *name;
 size_t len;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_iflags &= ~SB_I_NODEV;
 sb->s_iflags |= SB_I_NOEXEC;
 sb->s_magic = BINDERFS_SUPER_MAGIC;
 sb->s_op = &binderfs_super_ops;
 sb->s_time_gran = 1;

 sb->s_fs_info = kzalloc(sizeof(struct binderfs_info), GFP_KERNEL);
 if (!sb->s_fs_info)
  return -ENOMEM;
 info = sb->s_fs_info;

 info->ipc_ns = get_ipc_ns(current->nsproxy->ipc_ns);

 ret = binderfs_parse_mount_opts(data, &info->mount_opts);
 if (ret)
  return ret;

 info->root_gid = make_kgid(sb->s_user_ns, 0);
 if (!gid_valid(info->root_gid))
  info->root_gid = GLOBAL_ROOT_GID;
 info->root_uid = make_kuid(sb->s_user_ns, 0);
 if (!uid_valid(info->root_uid))
  info->root_uid = GLOBAL_ROOT_UID;

 inode = new_inode(sb);
 if (!inode)
  return -ENOMEM;

 inode->i_ino = FIRST_INODE;
 inode->i_fop = &simple_dir_operations;
 inode->i_mode = S_IFDIR | 0755;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_op = &binderfs_dir_inode_operations;
 set_nlink(inode, 2);

 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  return -ENOMEM;

 ret = binderfs_binder_ctl_create(sb);
 if (ret)
  return ret;

 name = binder_devices_param;
 for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
  strscpy(device_info.name, name, len + 1);
  ret = binderfs_binder_device_create(inode, ((void*)0), &device_info);
  if (ret)
   return ret;
  name += len;
  if (*name == ',')
   name++;
 }

 if (info->mount_opts.stats_mode == STATS_GLOBAL)
  return init_binder_logs(sb);

 return 0;
}
