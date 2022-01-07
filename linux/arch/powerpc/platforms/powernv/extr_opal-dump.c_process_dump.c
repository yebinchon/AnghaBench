
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kobject {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OPAL_SUCCESS ;
 int create_dump_obj (int,int,int) ;
 int dump_kset ;
 int dump_read_info (int*,int*,int*) ;
 int kobject_put (struct kobject*) ;
 struct kobject* kset_find_obj (int ,char*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static irqreturn_t process_dump(int irq, void *data)
{
 int rc;
 uint32_t dump_id, dump_size, dump_type;
 char name[22];
 struct kobject *kobj;

 rc = dump_read_info(&dump_id, &dump_size, &dump_type);
 if (rc != OPAL_SUCCESS)
  return IRQ_HANDLED;

 sprintf(name, "0x%x-0x%x", dump_type, dump_id);





 kobj = kset_find_obj(dump_kset, name);
 if (kobj) {

  kobject_put(kobj);
  return IRQ_HANDLED;
 }

 create_dump_obj(dump_id, dump_size, dump_type);

 return IRQ_HANDLED;
}
