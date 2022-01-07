
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* objects; } ;
struct TYPE_3__ {int odb; } ;


 int check_and_freshen_odb (int ,struct object_id const*,int) ;
 TYPE_2__* the_repository ;

__attribute__((used)) static int check_and_freshen_local(const struct object_id *oid, int freshen)
{
 return check_and_freshen_odb(the_repository->objects->odb, oid, freshen);
}
