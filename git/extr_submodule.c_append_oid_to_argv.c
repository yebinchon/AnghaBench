
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,int ) ;
 int oid_to_hex (struct object_id const*) ;

__attribute__((used)) static int append_oid_to_argv(const struct object_id *oid, void *data)
{
 struct argv_array *argv = data;
 argv_array_push(argv, oid_to_hex(oid));
 return 0;
}
