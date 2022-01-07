
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int magic; int root; } ;
struct rdt_fs_context {TYPE_1__ kfc; } ;
struct fs_context {int global; int user_ns; int * ops; TYPE_1__* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RDTGROUP_SUPER_MAGIC ;
 int get_user_ns (int *) ;
 int init_user_ns ;
 struct rdt_fs_context* kzalloc (int,int ) ;
 int put_user_ns (int ) ;
 int rdt_fs_context_ops ;
 int rdt_root ;

__attribute__((used)) static int rdt_init_fs_context(struct fs_context *fc)
{
 struct rdt_fs_context *ctx;

 ctx = kzalloc(sizeof(struct rdt_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->kfc.root = rdt_root;
 ctx->kfc.magic = RDTGROUP_SUPER_MAGIC;
 fc->fs_private = &ctx->kfc;
 fc->ops = &rdt_fs_context_ops;
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(&init_user_ns);
 fc->global = 1;
 return 0;
}
