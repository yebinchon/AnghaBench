
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_obj {int kobj; int id; } ;
struct dump_attribute {int attr; } ;
typedef size_t ssize_t ;


 int dump_send_ack (int ) ;
 int kobject_put (int *) ;
 int sysfs_remove_file_self (int *,int *) ;

__attribute__((used)) static ssize_t dump_ack_store(struct dump_obj *dump_obj,
         struct dump_attribute *attr,
         const char *buf,
         size_t count)
{
 dump_send_ack(dump_obj->id);
 sysfs_remove_file_self(&dump_obj->kobj, &attr->attr);
 kobject_put(&dump_obj->kobj);
 return count;
}
