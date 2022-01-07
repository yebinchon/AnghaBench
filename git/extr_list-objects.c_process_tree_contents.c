
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tree_desc {int dummy; } ;
struct TYPE_12__ {int oid; int flags; } ;
struct tree {TYPE_3__ object; int size; int buffer; } ;
struct traversal_context {TYPE_2__* revs; } ;
struct strbuf {int dummy; } ;
struct TYPE_16__ {int hash; } ;
struct name_entry {int path; TYPE_7__ oid; int mode; } ;
struct TYPE_13__ {int flags; } ;
struct blob {TYPE_4__ object; } ;
typedef enum interesting { ____Placeholder_interesting } interesting ;
struct TYPE_15__ {int index; } ;
struct TYPE_14__ {scalar_t__ nr; } ;
struct TYPE_10__ {TYPE_5__ pathspec; } ;
struct TYPE_11__ {TYPE_6__* repo; TYPE_1__ diffopt; } ;


 int NOT_USER_GIVEN ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int _ (char*) ;
 int all_entries_interesting ;
 int all_entries_not_interesting ;
 int die (int ,int ,int ) ;
 int entry_not_interesting ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 struct blob* lookup_blob (TYPE_6__*,TYPE_7__*) ;
 struct tree* lookup_tree (TYPE_6__*,TYPE_7__*) ;
 int oid_to_hex (int *) ;
 int process_blob (struct traversal_context*,struct blob*,struct strbuf*,int ) ;
 int process_gitlink (struct traversal_context*,int ,struct strbuf*,int ) ;
 int process_tree (struct traversal_context*,struct tree*,struct strbuf*,int ) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;
 int tree_entry_interesting (int ,struct name_entry*,struct strbuf*,int ,TYPE_5__*) ;

__attribute__((used)) static void process_tree_contents(struct traversal_context *ctx,
      struct tree *tree,
      struct strbuf *base)
{
 struct tree_desc desc;
 struct name_entry entry;
 enum interesting match = ctx->revs->diffopt.pathspec.nr == 0 ?
  all_entries_interesting : entry_not_interesting;

 init_tree_desc(&desc, tree->buffer, tree->size);

 while (tree_entry(&desc, &entry)) {
  if (match != all_entries_interesting) {
   match = tree_entry_interesting(ctx->revs->repo->index,
             &entry, base, 0,
             &ctx->revs->diffopt.pathspec);
   if (match == all_entries_not_interesting)
    break;
   if (match == entry_not_interesting)
    continue;
  }

  if (S_ISDIR(entry.mode)) {
   struct tree *t = lookup_tree(ctx->revs->repo, &entry.oid);
   if (!t) {
    die(_("entry '%s' in tree %s has tree mode, "
          "but is not a tree"),
        entry.path, oid_to_hex(&tree->object.oid));
   }
   t->object.flags |= NOT_USER_GIVEN;
   process_tree(ctx, t, base, entry.path);
  }
  else if (S_ISGITLINK(entry.mode))
   process_gitlink(ctx, entry.oid.hash,
     base, entry.path);
  else {
   struct blob *b = lookup_blob(ctx->revs->repo, &entry.oid);
   if (!b) {
    die(_("entry '%s' in tree %s has blob mode, "
          "but is not a blob"),
        entry.path, oid_to_hex(&tree->object.oid));
   }
   b->object.flags |= NOT_USER_GIVEN;
   process_blob(ctx, b, base, entry.path);
  }
 }
}
