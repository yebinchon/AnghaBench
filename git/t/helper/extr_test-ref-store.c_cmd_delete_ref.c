
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 unsigned int arg_flags (int ,char*) ;
 int die (char*) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 char* notnull (int ,char*) ;
 int refs_delete_ref (struct ref_store*,char const*,char const*,struct object_id*,unsigned int) ;

__attribute__((used)) static int cmd_delete_ref(struct ref_store *refs, const char **argv)
{
 const char *msg = notnull(*argv++, "msg");
 const char *refname = notnull(*argv++, "refname");
 const char *sha1_buf = notnull(*argv++, "old-sha1");
 unsigned int flags = arg_flags(*argv++, "flags");
 struct object_id old_oid;

 if (get_oid_hex(sha1_buf, &old_oid))
  die("not sha-1");

 return refs_delete_ref(refs, msg, refname, &old_oid, flags);
}
