
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warn_if_dangling_data {char* msg_fmt; int fp; int refnames; scalar_t__ refname; } ;
struct object_id {int dummy; } ;


 int REF_ISSYMREF ;
 int fprintf (int ,char*,char const*) ;
 int fputc (char,int ) ;
 char* resolve_ref_unsafe (char const*,int ,int *,int *) ;
 int strcmp (char const*,scalar_t__) ;
 int string_list_has_string (int ,char const*) ;

__attribute__((used)) static int warn_if_dangling_symref(const char *refname, const struct object_id *oid,
       int flags, void *cb_data)
{
 struct warn_if_dangling_data *d = cb_data;
 const char *resolves_to;

 if (!(flags & REF_ISSYMREF))
  return 0;

 resolves_to = resolve_ref_unsafe(refname, 0, ((void*)0), ((void*)0));
 if (!resolves_to
     || (d->refname
  ? strcmp(resolves_to, d->refname)
  : !string_list_has_string(d->refnames, resolves_to))) {
  return 0;
 }

 fprintf(d->fp, d->msg_fmt, refname);
 fputc('\n', d->fp);
 return 0;
}
