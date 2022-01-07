
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_2__* objects; } ;
struct TYPE_4__ {int loaded_alternates; TYPE_1__* odb; int alternate_db; } ;
struct TYPE_3__ {int path; } ;


 int PATH_SEP ;
 int link_alt_odb_entries (struct repository*,int ,int ,int *,int ) ;
 int read_info_alternates (struct repository*,int ,int ) ;

void prepare_alt_odb(struct repository *r)
{
 if (r->objects->loaded_alternates)
  return;

 link_alt_odb_entries(r, r->objects->alternate_db, PATH_SEP, ((void*)0), 0);

 read_info_alternates(r, r->objects->odb->path, 0);
 r->objects->loaded_alternates = 1;
}
