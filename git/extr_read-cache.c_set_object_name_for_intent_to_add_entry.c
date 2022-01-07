
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cache_entry {int oid; } ;


 int _ (char*) ;
 int blob_type ;
 int die (int ) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ write_object_file (char*,int ,int ,struct object_id*) ;

void set_object_name_for_intent_to_add_entry(struct cache_entry *ce)
{
 struct object_id oid;
 if (write_object_file("", 0, blob_type, &oid))
  die(_("cannot create an empty blob in the object database"));
 oidcpy(&ce->oid, &oid);
}
