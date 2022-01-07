
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int _ (char*) ;
 int die (int ,int ,...) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int oid_to_hex (struct object_id const*) ;
 int the_repository ;
 int type_name (int) ;

void assert_oid_type(const struct object_id *oid, enum object_type expect)
{
 enum object_type type = oid_object_info(the_repository, oid, ((void*)0));
 if (type < 0)
  die(_("%s is not a valid object"), oid_to_hex(oid));
 if (type != expect)
  die(_("%s is not a valid '%s' object"), oid_to_hex(oid),
      type_name(expect));
}
