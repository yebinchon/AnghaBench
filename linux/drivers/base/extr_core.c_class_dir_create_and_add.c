
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int * kset; } ;
struct class_dir {struct kobject kobj; struct class* class; } ;
struct class {int name; TYPE_1__* p; } ;
struct TYPE_2__ {int glue_dirs; } ;


 int ENOMEM ;
 struct kobject* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int class_dir_ktype ;
 int kobject_add (struct kobject*,struct kobject*,char*,int ) ;
 int kobject_init (struct kobject*,int *) ;
 int kobject_put (struct kobject*) ;
 struct class_dir* kzalloc (int,int ) ;

__attribute__((used)) static struct kobject *
class_dir_create_and_add(struct class *class, struct kobject *parent_kobj)
{
 struct class_dir *dir;
 int retval;

 dir = kzalloc(sizeof(*dir), GFP_KERNEL);
 if (!dir)
  return ERR_PTR(-ENOMEM);

 dir->class = class;
 kobject_init(&dir->kobj, &class_dir_ktype);

 dir->kobj.kset = &class->p->glue_dirs;

 retval = kobject_add(&dir->kobj, parent_kobj, "%s", class->name);
 if (retval < 0) {
  kobject_put(&dir->kobj);
  return ERR_PTR(retval);
 }
 return &dir->kobj;
}
