
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_7__ {TYPE_2__* objects; } ;
struct TYPE_6__ {TYPE_1__* odb; } ;
struct TYPE_5__ {struct object_directory* next; } ;


 scalar_t__ check_and_freshen_odb (struct object_directory*,struct object_id const*,int) ;
 int prepare_alt_odb (TYPE_3__*) ;
 TYPE_3__* the_repository ;

__attribute__((used)) static int check_and_freshen_nonlocal(const struct object_id *oid, int freshen)
{
 struct object_directory *odb;

 prepare_alt_odb(the_repository);
 for (odb = the_repository->objects->odb->next; odb; odb = odb->next) {
  if (check_and_freshen_odb(odb, oid, freshen))
   return 1;
 }
 return 0;
}
