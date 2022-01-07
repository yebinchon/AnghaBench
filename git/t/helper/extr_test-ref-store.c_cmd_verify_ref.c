
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct ref_store {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* notnull (int ,char*) ;
 int puts (int ) ;
 int refs_verify_refname_available (struct ref_store*,char const*,int *,int *,struct strbuf*) ;

__attribute__((used)) static int cmd_verify_ref(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");
 struct strbuf err = STRBUF_INIT;
 int ret;

 ret = refs_verify_refname_available(refs, refname, ((void*)0), ((void*)0), &err);
 if (err.len)
  puts(err.buf);
 return ret;
}
