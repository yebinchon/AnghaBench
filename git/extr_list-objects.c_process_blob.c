
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct traversal_context {int show_data; int (* show_object ) (struct object*,int *,int ) ;int filter; TYPE_1__* revs; } ;
struct strbuf {size_t len; int * buf; } ;
struct object {int flags; int oid; } ;
struct blob {struct object object; } ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;
struct TYPE_2__ {int repo; scalar_t__ exclude_promisor_objects; int blob_objects; } ;


 int LOFR_DO_SHOW ;
 int LOFR_MARK_SEEN ;
 int LOFS_BLOB ;
 int SEEN ;
 int UNINTERESTING ;
 int die (char*) ;
 int has_object_file (int *) ;
 scalar_t__ is_promisor_object (int *) ;
 int list_objects_filter__filter_object (int ,int ,struct object*,int *,int *,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int stub1 (struct object*,int *,int ) ;

__attribute__((used)) static void process_blob(struct traversal_context *ctx,
    struct blob *blob,
    struct strbuf *path,
    const char *name)
{
 struct object *obj = &blob->object;
 size_t pathlen;
 enum list_objects_filter_result r;

 if (!ctx->revs->blob_objects)
  return;
 if (!obj)
  die("bad blob object");
 if (obj->flags & (UNINTERESTING | SEEN))
  return;
 if (ctx->revs->exclude_promisor_objects &&
     !has_object_file(&obj->oid) &&
     is_promisor_object(&obj->oid))
  return;

 pathlen = path->len;
 strbuf_addstr(path, name);
 r = list_objects_filter__filter_object(ctx->revs->repo,
            LOFS_BLOB, obj,
            path->buf, &path->buf[pathlen],
            ctx->filter);
 if (r & LOFR_MARK_SEEN)
  obj->flags |= SEEN;
 if (r & LOFR_DO_SHOW)
  ctx->show_object(obj, path->buf, ctx->show_data);
 strbuf_setlen(path, pathlen);
}
