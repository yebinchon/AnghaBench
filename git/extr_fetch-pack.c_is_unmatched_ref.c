
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {scalar_t__ match_status; int old_oid; int name; } ;
struct object_id {int dummy; } ;


 scalar_t__ REF_NOT_MATCHED ;
 scalar_t__ oideq (struct object_id*,int *) ;
 int parse_oid_hex (int ,struct object_id*,char const**) ;

__attribute__((used)) static int is_unmatched_ref(const struct ref *ref)
{
 struct object_id oid;
 const char *p;
 return ref->match_status == REF_NOT_MATCHED &&
  !parse_oid_hex(ref->name, &oid, &p) &&
  *p == '\0' &&
  oideq(&oid, &ref->old_oid);
}
