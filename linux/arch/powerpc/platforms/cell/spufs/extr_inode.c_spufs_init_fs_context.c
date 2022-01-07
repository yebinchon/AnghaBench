
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_sb_info {int dummy; } ;
struct spufs_fs_context {int mode; int gid; int uid; } ;
struct fs_context {int * ops; struct spufs_sb_info* s_fs_info; struct spufs_fs_context* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int current_gid () ;
 int current_uid () ;
 int kfree (struct spufs_fs_context*) ;
 void* kzalloc (int,int ) ;
 int spufs_context_ops ;

__attribute__((used)) static int spufs_init_fs_context(struct fs_context *fc)
{
 struct spufs_fs_context *ctx;
 struct spufs_sb_info *sbi;

 ctx = kzalloc(sizeof(struct spufs_fs_context), GFP_KERNEL);
 if (!ctx)
  goto nomem;

 sbi = kzalloc(sizeof(struct spufs_sb_info), GFP_KERNEL);
 if (!sbi)
  goto nomem_ctx;

 ctx->uid = current_uid();
 ctx->gid = current_gid();
 ctx->mode = 0755;

 fc->fs_private = ctx;
 fc->s_fs_info = sbi;
 fc->ops = &spufs_context_ops;
 return 0;

nomem_ctx:
 kfree(ctx);
nomem:
 return -ENOMEM;
}
