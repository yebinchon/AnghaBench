
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct traversal_context {TYPE_1__* revs; int show_data; int (* show_object ) (struct object*,char const*,int ) ;} ;
struct strbuf {scalar_t__ len; } ;
struct object_array_entry {char* name; char* path; struct object* item; } ;
struct object {int flags; scalar_t__ type; int oid; } ;
struct blob {int dummy; } ;
struct TYPE_4__ {int nr; struct object_array_entry* objects; } ;
struct TYPE_3__ {TYPE_2__ pending; } ;


 scalar_t__ OBJ_BLOB ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 int SEEN ;
 int UNINTERESTING ;
 int assert (int) ;
 int die (char*,int ,char const*) ;
 int object_array_clear (TYPE_2__*) ;
 int oid_to_hex (int *) ;
 int process_blob (struct traversal_context*,struct blob*,struct strbuf*,char const*) ;
 int process_tree (struct traversal_context*,struct tree*,struct strbuf*,char const*) ;
 int stub1 (struct object*,char const*,int ) ;

__attribute__((used)) static void traverse_trees_and_blobs(struct traversal_context *ctx,
         struct strbuf *base)
{
 int i;

 assert(base->len == 0);

 for (i = 0; i < ctx->revs->pending.nr; i++) {
  struct object_array_entry *pending = ctx->revs->pending.objects + i;
  struct object *obj = pending->item;
  const char *name = pending->name;
  const char *path = pending->path;
  if (obj->flags & (UNINTERESTING | SEEN))
   continue;
  if (obj->type == OBJ_TAG) {
   obj->flags |= SEEN;
   ctx->show_object(obj, name, ctx->show_data);
   continue;
  }
  if (!path)
   path = "";
  if (obj->type == OBJ_TREE) {
   process_tree(ctx, (struct tree *)obj, base, path);
   continue;
  }
  if (obj->type == OBJ_BLOB) {
   process_blob(ctx, (struct blob *)obj, base, path);
   continue;
  }
  die("unknown pending object %s (%s)",
      oid_to_hex(&obj->oid), name);
 }
 object_array_clear(&ctx->revs->pending);
}
