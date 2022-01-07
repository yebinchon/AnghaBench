
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {int buffer_output; TYPE_1__* priv; int obuf; } ;
struct TYPE_2__ {int needed_rename_limit; int call_depth; } ;


 int FREE_AND_NULL (TYPE_1__*) ;
 int diff_warn_rename_limit (char*,int ,int ) ;
 int flush_output (struct merge_options*) ;
 scalar_t__ show (struct merge_options*,int) ;
 int strbuf_release (int *) ;

__attribute__((used)) static void merge_finalize(struct merge_options *opt)
{
 flush_output(opt);
 if (!opt->priv->call_depth && opt->buffer_output < 2)
  strbuf_release(&opt->obuf);
 if (show(opt, 2))
  diff_warn_rename_limit("merge.renamelimit",
           opt->priv->needed_rename_limit, 0);
 FREE_AND_NULL(opt->priv);
}
