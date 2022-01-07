
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;
typedef int each_ref_fn ;


 struct strbuf STRBUF_INIT ;
 int refs_for_each_fullref_in (struct ref_store*,int ,int ,void*,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int for_each_bisect_ref(struct ref_store *refs, each_ref_fn fn,
          void *cb_data, const char *term)
{
 struct strbuf bisect_refs = STRBUF_INIT;
 int status;
 strbuf_addf(&bisect_refs, "refs/bisect/%s", term);
 status = refs_for_each_fullref_in(refs, bisect_refs.buf, fn, cb_data, 0);
 strbuf_release(&bisect_refs);
 return status;
}
