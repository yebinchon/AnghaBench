
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_fs_context {int dummy; } ;
struct fs_context {int dummy; } ;


 int kernfs_free_fs_context (struct fs_context*) ;
 int kfree (struct rdt_fs_context*) ;
 struct rdt_fs_context* rdt_fc2context (struct fs_context*) ;

__attribute__((used)) static void rdt_fs_context_free(struct fs_context *fc)
{
 struct rdt_fs_context *ctx = rdt_fc2context(fc);

 kernfs_free_fs_context(fc);
 kfree(ctx);
}
