
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int check_and_freshen_nonlocal (struct object_id const*,int ) ;

int has_loose_object_nonlocal(const struct object_id *oid)
{
 return check_and_freshen_nonlocal(oid, 0);
}
