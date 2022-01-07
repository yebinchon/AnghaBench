
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int SEEN ;
 int die (char*,int ) ;
 struct object* lookup_object_by_type (int ,struct object_id const*,int) ;
 int oid_to_hex (struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int mark_object_seen(const struct object_id *oid,
        enum object_type type,
        int exclude,
        uint32_t name_hash,
        struct packed_git *found_pack,
        off_t found_offset)
{
 struct object *obj = lookup_object_by_type(the_repository, oid, type);
 if (!obj)
  die("unable to create object '%s'", oid_to_hex(oid));

 obj->flags |= SEEN;
 return 0;
}
