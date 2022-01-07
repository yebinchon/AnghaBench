
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oid_to_hex (struct object_id const*) ;
 int puts (int ) ;

__attribute__((used)) static int print_oid(const struct object_id *oid, void *data)
{
 puts(oid_to_hex(oid));
 return 0;
}
