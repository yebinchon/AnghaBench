
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int unpack_opts; int orig_index; } ;


 int clear_unpack_trees_porcelain (int *) ;
 int discard_index (int *) ;

__attribute__((used)) static void unpack_trees_finish(struct merge_options *opt)
{
 discard_index(&opt->priv->orig_index);
 clear_unpack_trees_porcelain(&opt->priv->unpack_opts);
}
