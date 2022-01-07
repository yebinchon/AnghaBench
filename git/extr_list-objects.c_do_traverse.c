
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct tree {TYPE_1__ object; } ;
struct traversal_context {TYPE_3__* revs; int show_data; int (* show_commit ) (struct commit*,int ) ;} ;
struct strbuf {int dummy; } ;
struct TYPE_6__ {int oid; scalar_t__ parsed; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_7__ {scalar_t__ tree_blobs_in_commit_order; int tree_objects; } ;


 int NOT_USER_GIVEN ;
 int PATH_MAX ;
 int _ (char*) ;
 int add_pending_tree (TYPE_3__*,struct tree*) ;
 int die (int ,int ) ;
 struct tree* get_commit_tree (struct commit*) ;
 struct commit* get_revision (TYPE_3__*) ;
 int oid_to_hex (int *) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int stub1 (struct commit*,int ) ;
 int traverse_trees_and_blobs (struct traversal_context*,struct strbuf*) ;

__attribute__((used)) static void do_traverse(struct traversal_context *ctx)
{
 struct commit *commit;
 struct strbuf csp;
 strbuf_init(&csp, PATH_MAX);

 while ((commit = get_revision(ctx->revs)) != ((void*)0)) {




  if (!ctx->revs->tree_objects)
   ;
  else if (get_commit_tree(commit)) {
   struct tree *tree = get_commit_tree(commit);
   tree->object.flags |= NOT_USER_GIVEN;
   add_pending_tree(ctx->revs, tree);
  } else if (commit->object.parsed) {
   die(_("unable to load root tree for commit %s"),
         oid_to_hex(&commit->object.oid));
  }
  ctx->show_commit(commit, ctx->show_data);

  if (ctx->revs->tree_blobs_in_commit_order)





   traverse_trees_and_blobs(ctx, &csp);
 }
 traverse_trees_and_blobs(ctx, &csp);
 strbuf_release(&csp);
}
