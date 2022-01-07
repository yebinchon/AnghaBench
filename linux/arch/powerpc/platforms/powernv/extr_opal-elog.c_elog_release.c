
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct elog_obj {struct elog_obj* buffer; } ;


 int kfree (struct elog_obj*) ;
 struct elog_obj* to_elog_obj (struct kobject*) ;

__attribute__((used)) static void elog_release(struct kobject *kobj)
{
 struct elog_obj *elog;

 elog = to_elog_obj(kobj);
 kfree(elog->buffer);
 kfree(elog);
}
