
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 scalar_t__ oideq (struct object_id const*,struct object_id const*) ;

__attribute__((used)) static int oid_eq(const struct object_id *a, const struct object_id *b)
{
 if (!a && !b)
  return 2;
 return a && b && oideq(a, b);
}
