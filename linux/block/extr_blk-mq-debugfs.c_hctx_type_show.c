
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {size_t type; } ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ HCTX_MAX_TYPES ;
 int * hctx_types ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hctx_type_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 BUILD_BUG_ON(ARRAY_SIZE(hctx_types) != HCTX_MAX_TYPES);
 seq_printf(m, "%s\n", hctx_types[hctx->type]);
 return 0;
}
