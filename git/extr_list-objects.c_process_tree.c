
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; int oid; } ;
struct tree {struct object object; } ;
struct traversal_context {int show_data; int (* show_object ) (struct object*,int *,int ) ;int filter; struct rev_info* revs; } ;
struct strbuf {int len; int * buf; } ;
struct rev_info {int repo; int do_not_die_on_missing_tree; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; int tree_objects; } ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;


 int LOFR_DO_SHOW ;
 int LOFR_MARK_SEEN ;
 int LOFR_SKIP_TREE ;
 int LOFS_BEGIN_TREE ;
 int LOFS_END_TREE ;
 int SEEN ;
 int UNINTERESTING ;
 int die (char*,...) ;
 int free_tree_buffer (struct tree*) ;
 scalar_t__ is_promisor_object (int *) ;
 int list_objects_filter__filter_object (int ,int ,struct object*,int *,int *,int ) ;
 int oid_to_hex (int *) ;
 int parse_tree_gently (struct tree*,int) ;
 int process_tree_contents (struct traversal_context*,struct tree*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int stub1 (struct object*,int *,int ) ;
 int stub2 (struct object*,int *,int ) ;
 int trace_printf (char*,int *) ;

__attribute__((used)) static void process_tree(struct traversal_context *ctx,
    struct tree *tree,
    struct strbuf *base,
    const char *name)
{
 struct object *obj = &tree->object;
 struct rev_info *revs = ctx->revs;
 int baselen = base->len;
 enum list_objects_filter_result r;
 int failed_parse;

 if (!revs->tree_objects)
  return;
 if (!obj)
  die("bad tree object");
 if (obj->flags & (UNINTERESTING | SEEN))
  return;

 failed_parse = parse_tree_gently(tree, 1);
 if (failed_parse) {
  if (revs->ignore_missing_links)
   return;






  if (revs->exclude_promisor_objects &&
      is_promisor_object(&obj->oid))
   return;

  if (!revs->do_not_die_on_missing_tree)
   die("bad tree object %s", oid_to_hex(&obj->oid));
 }

 strbuf_addstr(base, name);
 r = list_objects_filter__filter_object(ctx->revs->repo,
            LOFS_BEGIN_TREE, obj,
            base->buf, &base->buf[baselen],
            ctx->filter);
 if (r & LOFR_MARK_SEEN)
  obj->flags |= SEEN;
 if (r & LOFR_DO_SHOW)
  ctx->show_object(obj, base->buf, ctx->show_data);
 if (base->len)
  strbuf_addch(base, '/');

 if (r & LOFR_SKIP_TREE)
  trace_printf("Skipping contents of tree %s...\n", base->buf);
 else if (!failed_parse)
  process_tree_contents(ctx, tree, base);

 r = list_objects_filter__filter_object(ctx->revs->repo,
            LOFS_END_TREE, obj,
            base->buf, &base->buf[baselen],
            ctx->filter);
 if (r & LOFR_MARK_SEEN)
  obj->flags |= SEEN;
 if (r & LOFR_DO_SHOW)
  ctx->show_object(obj, base->buf, ctx->show_data);

 strbuf_setlen(base, baselen);
 free_tree_buffer(tree);
}
