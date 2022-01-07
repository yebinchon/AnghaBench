
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elog_obj {int kobj; int id; } ;
struct elog_attribute {int attr; } ;
typedef size_t ssize_t ;


 int kobject_put (int *) ;
 int opal_send_ack_elog (int ) ;
 int sysfs_remove_file_self (int *,int *) ;

__attribute__((used)) static ssize_t elog_ack_store(struct elog_obj *elog_obj,
         struct elog_attribute *attr,
         const char *buf,
         size_t count)
{
 opal_send_ack_elog(elog_obj->id);
 sysfs_remove_file_self(&elog_obj->kobj, &attr->attr);
 kobject_put(&elog_obj->kobj);
 return count;
}
