
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int tid; } ;
struct seq_file {struct spu_context* private; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int spufs_show_tid(struct seq_file *s, void *private)
{
 struct spu_context *ctx = s->private;

 seq_printf(s, "%d\n", ctx->tid);
 return 0;
}
