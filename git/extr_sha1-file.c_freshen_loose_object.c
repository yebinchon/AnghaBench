
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int check_and_freshen (struct object_id const*,int) ;

__attribute__((used)) static int freshen_loose_object(const struct object_id *oid)
{
 return check_and_freshen(oid, 1);
}
