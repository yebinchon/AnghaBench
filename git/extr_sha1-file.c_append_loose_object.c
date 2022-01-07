
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oid_array_append (void*,struct object_id const*) ;

__attribute__((used)) static int append_loose_object(const struct object_id *oid, const char *path,
          void *data)
{
 oid_array_append(data, oid);
 return 0;
}
