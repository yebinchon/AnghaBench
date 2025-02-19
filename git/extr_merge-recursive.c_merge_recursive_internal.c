
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tree {int dummy; } ;
struct strbuf {char* buf; } ;
struct merge_options {char* ancestor; char* branch1; char* branch2; TYPE_4__* repo; TYPE_3__* priv; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_10__ {int oid; } ;
struct commit {TYPE_8__* parents; TYPE_2__ object; } ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
struct TYPE_12__ {int index; TYPE_1__* hash_algo; } ;
struct TYPE_11__ {scalar_t__ call_depth; } ;
struct TYPE_9__ {int empty_tree; } ;


 int DEFAULT_ABBREV ;
 int Q_ (char*,char*,unsigned int) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 unsigned int commit_list_count (struct commit_list*) ;
 int commit_list_insert (struct commit*,TYPE_8__**) ;
 int discard_index (int ) ;
 int err (struct merge_options*,int ) ;
 int flush_output (struct merge_options*) ;
 struct commit_list* get_merge_bases (struct commit*,struct commit*) ;
 struct tree* lookup_tree (TYPE_4__*,int ) ;
 struct commit* make_virtual_commit (TYPE_4__*,struct tree*,char*) ;
 int merge_trees_internal (struct merge_options*,int ,int ,int ,struct tree**) ;
 int output (struct merge_options*,int,int ,...) ;
 int output_commit_title (struct merge_options*,struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;
 int repo_get_commit_tree (TYPE_4__*,struct commit*) ;
 int repo_read_index (TYPE_4__*) ;
 struct commit_list* reverse_commit_list (struct commit_list*) ;
 scalar_t__ show (struct merge_options*,int) ;
 int strbuf_add_unique_abbrev (struct strbuf*,int *,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int merge_recursive_internal(struct merge_options *opt,
        struct commit *h1,
        struct commit *h2,
        struct commit_list *merge_bases,
        struct commit **result)
{
 struct commit_list *iter;
 struct commit *merged_merge_bases;
 struct tree *result_tree;
 int clean;
 const char *ancestor_name;
 struct strbuf merge_base_abbrev = STRBUF_INIT;

 if (show(opt, 4)) {
  output(opt, 4, _("Merging:"));
  output_commit_title(opt, h1);
  output_commit_title(opt, h2);
 }

 if (!merge_bases) {
  merge_bases = get_merge_bases(h1, h2);
  merge_bases = reverse_commit_list(merge_bases);
 }

 if (show(opt, 5)) {
  unsigned cnt = commit_list_count(merge_bases);

  output(opt, 5, Q_("found %u common ancestor:",
    "found %u common ancestors:", cnt), cnt);
  for (iter = merge_bases; iter; iter = iter->next)
   output_commit_title(opt, iter->item);
 }

 merged_merge_bases = pop_commit(&merge_bases);
 if (merged_merge_bases == ((void*)0)) {

  struct tree *tree;

  tree = lookup_tree(opt->repo, opt->repo->hash_algo->empty_tree);
  merged_merge_bases = make_virtual_commit(opt->repo, tree,
        "ancestor");
  ancestor_name = "empty tree";
 } else if (opt->ancestor && !opt->priv->call_depth) {
  ancestor_name = opt->ancestor;
 } else if (merge_bases) {
  ancestor_name = "merged common ancestors";
 } else {
  strbuf_add_unique_abbrev(&merge_base_abbrev,
      &merged_merge_bases->object.oid,
      DEFAULT_ABBREV);
  ancestor_name = merge_base_abbrev.buf;
 }

 for (iter = merge_bases; iter; iter = iter->next) {
  const char *saved_b1, *saved_b2;
  opt->priv->call_depth++;
  discard_index(opt->repo->index);
  saved_b1 = opt->branch1;
  saved_b2 = opt->branch2;
  opt->branch1 = "Temporary merge branch 1";
  opt->branch2 = "Temporary merge branch 2";
  if (merge_recursive_internal(opt, merged_merge_bases, iter->item,
          ((void*)0), &merged_merge_bases) < 0)
   return -1;
  opt->branch1 = saved_b1;
  opt->branch2 = saved_b2;
  opt->priv->call_depth--;

  if (!merged_merge_bases)
   return err(opt, _("merge returned no commit"));
 }

 discard_index(opt->repo->index);
 if (!opt->priv->call_depth)
  repo_read_index(opt->repo);

 opt->ancestor = ancestor_name;
 clean = merge_trees_internal(opt,
         repo_get_commit_tree(opt->repo, h1),
         repo_get_commit_tree(opt->repo, h2),
         repo_get_commit_tree(opt->repo,
         merged_merge_bases),
         &result_tree);
 strbuf_release(&merge_base_abbrev);
 opt->ancestor = ((void*)0);
 if (clean < 0) {
  flush_output(opt);
  return clean;
 }

 if (opt->priv->call_depth) {
  *result = make_virtual_commit(opt->repo, result_tree,
           "merged tree");
  commit_list_insert(h1, &(*result)->parents);
  commit_list_insert(h2, &(*result)->parents->next);
 }
 return clean;
}
