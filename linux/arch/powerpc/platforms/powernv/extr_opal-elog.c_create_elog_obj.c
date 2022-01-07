
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_10__ {int kset; } ;
struct TYPE_9__ {char* name; int mode; } ;
struct TYPE_11__ {size_t size; int read; TYPE_1__ attr; } ;
struct elog_obj {size_t size; TYPE_2__ kobj; TYPE_3__ raw_attr; int * buffer; void* id; void* type; } ;


 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int OPAL_SUCCESS ;
 int __pa (int *) ;
 int elog_kset ;
 int elog_ktype ;
 int kfree (int *) ;
 int kobject_add (TYPE_2__*,int *,char*,void*) ;
 int kobject_init (TYPE_2__*,int *) ;
 int kobject_put (TYPE_2__*) ;
 int kobject_uevent (TYPE_2__*,int ) ;
 void* kzalloc (int,int ) ;
 int opal_read_elog (int ,int,void*) ;
 int pr_err (char*,void*) ;
 int raw_attr_read ;
 int sysfs_bin_attr_init (TYPE_3__*) ;
 int sysfs_create_bin_file (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static struct elog_obj *create_elog_obj(uint64_t id, size_t size, uint64_t type)
{
 struct elog_obj *elog;
 int rc;

 elog = kzalloc(sizeof(*elog), GFP_KERNEL);
 if (!elog)
  return ((void*)0);

 elog->kobj.kset = elog_kset;

 kobject_init(&elog->kobj, &elog_ktype);

 sysfs_bin_attr_init(&elog->raw_attr);

 elog->raw_attr.attr.name = "raw";
 elog->raw_attr.attr.mode = 0400;
 elog->raw_attr.size = size;
 elog->raw_attr.read = raw_attr_read;

 elog->id = id;
 elog->size = size;
 elog->type = type;

 elog->buffer = kzalloc(elog->size, GFP_KERNEL);

 if (elog->buffer) {
  rc = opal_read_elog(__pa(elog->buffer),
      elog->size, elog->id);
  if (rc != OPAL_SUCCESS) {
   pr_err("ELOG: log read failed for log-id=%llx\n",
          elog->id);
   kfree(elog->buffer);
   elog->buffer = ((void*)0);
  }
 }

 rc = kobject_add(&elog->kobj, ((void*)0), "0x%llx", id);
 if (rc) {
  kobject_put(&elog->kobj);
  return ((void*)0);
 }

 rc = sysfs_create_bin_file(&elog->kobj, &elog->raw_attr);
 if (rc) {
  kobject_put(&elog->kobj);
  return ((void*)0);
 }

 kobject_uevent(&elog->kobj, KOBJ_ADD);

 return elog;
}
