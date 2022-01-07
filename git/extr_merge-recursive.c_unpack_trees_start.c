
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tree_desc {int dummy; } ;
struct tree {int dummy; } ;
struct merge_options {TYPE_2__* priv; TYPE_1__* repo; } ;
struct index_state {int cache_tree; int * member_0; } ;
struct TYPE_8__ {int index_only; int update; int merge; int head_idx; int aggressive; struct index_state* src_index; struct index_state* dst_index; int fn; } ;
struct TYPE_7__ {struct index_state orig_index; TYPE_3__ unpack_opts; scalar_t__ call_depth; } ;
struct TYPE_6__ {struct index_state* index; } ;


 int cache_tree_free (int *) ;
 int init_tree_desc_from_tree (struct tree_desc*,struct tree*) ;
 int memset (TYPE_3__*,int ,int) ;
 int merge_detect_rename (struct merge_options*) ;
 int setup_unpack_trees_porcelain (TYPE_3__*,char*) ;
 int threeway_merge ;
 int unpack_trees (int,struct tree_desc*,TYPE_3__*) ;

__attribute__((used)) static int unpack_trees_start(struct merge_options *opt,
         struct tree *common,
         struct tree *head,
         struct tree *merge)
{
 int rc;
 struct tree_desc t[3];
 struct index_state tmp_index = { ((void*)0) };

 memset(&opt->priv->unpack_opts, 0, sizeof(opt->priv->unpack_opts));
 if (opt->priv->call_depth)
  opt->priv->unpack_opts.index_only = 1;
 else
  opt->priv->unpack_opts.update = 1;
 opt->priv->unpack_opts.merge = 1;
 opt->priv->unpack_opts.head_idx = 2;
 opt->priv->unpack_opts.fn = threeway_merge;
 opt->priv->unpack_opts.src_index = opt->repo->index;
 opt->priv->unpack_opts.dst_index = &tmp_index;
 opt->priv->unpack_opts.aggressive = !merge_detect_rename(opt);
 setup_unpack_trees_porcelain(&opt->priv->unpack_opts, "merge");

 init_tree_desc_from_tree(t+0, common);
 init_tree_desc_from_tree(t+1, head);
 init_tree_desc_from_tree(t+2, merge);

 rc = unpack_trees(3, t, &opt->priv->unpack_opts);
 cache_tree_free(&opt->repo->index->cache_tree);







 opt->priv->orig_index = *opt->repo->index;
 *opt->repo->index = tmp_index;
 opt->priv->unpack_opts.src_index = &opt->priv->orig_index;

 return rc;
}
