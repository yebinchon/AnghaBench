
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 int UPDATE_REFS_DIE_ON_ERR ;
 unsigned int arg_flags (int ,char*) ;
 int die (char*) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 char* notnull (int ,char*) ;
 int refs_update_ref (struct ref_store*,char const*,char const*,struct object_id*,struct object_id*,unsigned int,int ) ;

__attribute__((used)) static int cmd_update_ref(struct ref_store *refs, const char **argv)
{
 const char *msg = notnull(*argv++, "msg");
 const char *refname = notnull(*argv++, "refname");
 const char *new_sha1_buf = notnull(*argv++, "new-sha1");
 const char *old_sha1_buf = notnull(*argv++, "old-sha1");
 unsigned int flags = arg_flags(*argv++, "flags");
 struct object_id old_oid;
 struct object_id new_oid;

 if (get_oid_hex(old_sha1_buf, &old_oid) ||
     get_oid_hex(new_sha1_buf, &new_oid))
  die("not sha-1");

 return refs_update_ref(refs, msg, refname,
          &new_oid, &old_oid,
          flags, UPDATE_REFS_DIE_ON_ERR);
}
