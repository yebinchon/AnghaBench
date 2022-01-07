
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 int oid_to_hex (struct object_id const*) ;
 char* resolve_ref_unsafe (char const*,int ,int *,int *) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strip_namespace (char const*) ;

__attribute__((used)) static int show_head_ref(const char *refname, const struct object_id *oid,
    int flag, void *cb_data)
{
 struct strbuf *buf = cb_data;

 if (flag & REF_ISSYMREF) {
  const char *target = resolve_ref_unsafe(refname,
       RESOLVE_REF_READING,
       ((void*)0), ((void*)0));

  if (target)
   strbuf_addf(buf, "ref: %s\n", strip_namespace(target));
 } else {
  strbuf_addf(buf, "%s\n", oid_to_hex(oid));
 }

 return 0;
}
