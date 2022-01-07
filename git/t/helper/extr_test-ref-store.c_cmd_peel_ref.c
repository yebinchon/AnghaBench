
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 char* notnull (int ,char*) ;
 int oid_to_hex (struct object_id*) ;
 int puts (int ) ;
 int refs_peel_ref (struct ref_store*,char const*,struct object_id*) ;

__attribute__((used)) static int cmd_peel_ref(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");
 struct object_id oid;
 int ret;

 ret = refs_peel_ref(refs, refname, &oid);
 if (!ret)
  puts(oid_to_hex(&oid));
 return ret;
}
