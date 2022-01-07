
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* objects; } ;
struct TYPE_5__ {TYPE_1__* odb; } ;
struct TYPE_4__ {char* path; } ;


 int BUG (char*) ;
 TYPE_3__* the_repository ;

char *get_object_directory(void)
{
 if (!the_repository->objects->odb)
  BUG("git environment hasn't been setup");
 return the_repository->objects->odb->path;
}
