
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_sb_info {int gid; int uid; int lock; } ;
struct fs_context {int * ops; struct hypfs_sb_info* s_fs_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int current_gid () ;
 int current_uid () ;
 int hypfs_context_ops ;
 struct hypfs_sb_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hypfs_init_fs_context(struct fs_context *fc)
{
 struct hypfs_sb_info *sbi;

 sbi = kzalloc(sizeof(struct hypfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;

 mutex_init(&sbi->lock);
 sbi->uid = current_uid();
 sbi->gid = current_gid();

 fc->s_fs_info = sbi;
 fc->ops = &hypfs_context_ops;
 return 0;
}
