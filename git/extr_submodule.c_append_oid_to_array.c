
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;


 int oid_array_append (struct oid_array*,struct object_id const*) ;

__attribute__((used)) static int append_oid_to_array(const char *ref, const struct object_id *oid,
          int flags, void *data)
{
 struct oid_array *array = data;
 oid_array_append(array, oid);
 return 0;
}
