
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {scalar_t__ len; int buf; } ;
struct merge_options {TYPE_1__* repo; } ;
struct index_state {int dummy; } ;
struct diff_filespec {scalar_t__ mode; int oid; } ;
struct TYPE_2__ {struct index_state* index; } ;


 struct strbuf STRBUF_INIT ;
 int memcmp (int ,int ,scalar_t__) ;
 scalar_t__ oid_eq (int *,int *) ;
 scalar_t__ read_oid_strbuf (struct merge_options*,int *,struct strbuf*) ;
 int renormalize_buffer (struct index_state const*,char const*,int ,scalar_t__,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int blob_unchanged(struct merge_options *opt,
     const struct diff_filespec *o,
     const struct diff_filespec *a,
     int renormalize, const char *path)
{
 struct strbuf obuf = STRBUF_INIT;
 struct strbuf abuf = STRBUF_INIT;
 int ret = 0;
 const struct index_state *idx = opt->repo->index;

 if (a->mode != o->mode)
  return 0;
 if (oid_eq(&o->oid, &a->oid))
  return 1;
 if (!renormalize)
  return 0;

 if (read_oid_strbuf(opt, &o->oid, &obuf) ||
     read_oid_strbuf(opt, &a->oid, &abuf))
  goto error_return;





 if (renormalize_buffer(idx, path, obuf.buf, obuf.len, &obuf) |
     renormalize_buffer(idx, path, abuf.buf, abuf.len, &abuf))
  ret = (obuf.len == abuf.len && !memcmp(obuf.buf, abuf.buf, obuf.len));

error_return:
 strbuf_release(&obuf);
 strbuf_release(&abuf);
 return ret;
}
