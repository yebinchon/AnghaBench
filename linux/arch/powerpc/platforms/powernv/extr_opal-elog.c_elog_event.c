
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct kobject {int dummy; } ;
typedef int irqreturn_t ;
typedef int __be64 ;


 int IRQ_HANDLED ;
 scalar_t__ OPAL_MAX_ERRLOG_SIZE ;
 int OPAL_SUCCESS ;
 int WARN_ON (int) ;
 scalar_t__ be64_to_cpu (int ) ;
 int create_elog_obj (scalar_t__,scalar_t__,scalar_t__) ;
 int elog_kset ;
 int kobject_put (struct kobject*) ;
 struct kobject* kset_find_obj (int ,char*) ;
 int opal_get_elog_size (int *,int *,int *) ;
 int pr_err (char*) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static irqreturn_t elog_event(int irq, void *data)
{
 __be64 size;
 __be64 id;
 __be64 type;
 uint64_t elog_size;
 uint64_t log_id;
 uint64_t elog_type;
 int rc;
 char name[2+16+1];
 struct kobject *kobj;

 rc = opal_get_elog_size(&id, &size, &type);
 if (rc != OPAL_SUCCESS) {
  pr_err("ELOG: OPAL log info read failed\n");
  return IRQ_HANDLED;
 }

 elog_size = be64_to_cpu(size);
 log_id = be64_to_cpu(id);
 elog_type = be64_to_cpu(type);

 WARN_ON(elog_size > OPAL_MAX_ERRLOG_SIZE);

 if (elog_size >= OPAL_MAX_ERRLOG_SIZE)
  elog_size = OPAL_MAX_ERRLOG_SIZE;

 sprintf(name, "0x%llx", log_id);





 kobj = kset_find_obj(elog_kset, name);
 if (kobj) {

  kobject_put(kobj);
  return IRQ_HANDLED;
 }

 create_elog_obj(log_id, elog_size, elog_type);

 return IRQ_HANDLED;
}
