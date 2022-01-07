
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int kobj; struct elevator_queue* elevator; } ;
struct TYPE_4__ {scalar_t__ name; } ;
struct elv_fs_entry {TYPE_2__ attr; } ;
struct elevator_queue {int registered; int kobj; TYPE_1__* type; } ;
struct TYPE_3__ {struct elv_fs_entry* elevator_attrs; } ;


 int KOBJ_ADD ;
 int kobject_add (int *,int *,char*,char*) ;
 int kobject_uevent (int *,int ) ;
 scalar_t__ sysfs_create_file (int *,TYPE_2__*) ;

int elv_register_queue(struct request_queue *q, bool uevent)
{
 struct elevator_queue *e = q->elevator;
 int error;

 error = kobject_add(&e->kobj, &q->kobj, "%s", "iosched");
 if (!error) {
  struct elv_fs_entry *attr = e->type->elevator_attrs;
  if (attr) {
   while (attr->attr.name) {
    if (sysfs_create_file(&e->kobj, &attr->attr))
     break;
    attr++;
   }
  }
  if (uevent)
   kobject_uevent(&e->kobj, KOBJ_ADD);

  e->registered = 1;
 }
 return error;
}
