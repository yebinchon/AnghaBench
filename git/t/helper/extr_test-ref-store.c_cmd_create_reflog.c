
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct ref_store {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int arg_flags (int ,char*) ;
 char* notnull (int ,char*) ;
 int puts (int ) ;
 int refs_create_reflog (struct ref_store*,char const*,int,struct strbuf*) ;

__attribute__((used)) static int cmd_create_reflog(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");
 int force_create = arg_flags(*argv++, "force-create");
 struct strbuf err = STRBUF_INIT;
 int ret;

 ret = refs_create_reflog(refs, refname, force_create, &err);
 if (err.len)
  puts(err.buf);
 return ret;
}
