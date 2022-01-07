
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 int arg_flags (int ,char*) ;
 char* notnull (int ,char*) ;
 char* oid_to_hex (struct object_id*) ;
 int printf (char*,char*,char const*,int) ;
 char* refs_resolve_ref_unsafe (struct ref_store*,char const*,int,struct object_id*,int*) ;

__attribute__((used)) static int cmd_resolve_ref(struct ref_store *refs, const char **argv)
{
 struct object_id oid;
 const char *refname = notnull(*argv++, "refname");
 int resolve_flags = arg_flags(*argv++, "resolve-flags");
 int flags;
 const char *ref;

 ref = refs_resolve_ref_unsafe(refs, refname, resolve_flags,
          &oid, &flags);
 printf("%s %s 0x%x\n", oid_to_hex(&oid), ref ? ref : "(null)", flags);
 return ref ? 0 : 1;
}
