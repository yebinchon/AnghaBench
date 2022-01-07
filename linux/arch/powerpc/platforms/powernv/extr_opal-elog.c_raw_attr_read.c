
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct elog_obj {int * buffer; int id; int size; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EIO ;
 int GFP_KERNEL ;
 int OPAL_SUCCESS ;
 int __pa (int *) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int memcpy (char*,int *,size_t) ;
 int opal_read_elog (int ,int ,int ) ;
 int pr_err (char*,int ) ;
 struct elog_obj* to_elog_obj (struct kobject*) ;

__attribute__((used)) static ssize_t raw_attr_read(struct file *filep, struct kobject *kobj,
        struct bin_attribute *bin_attr,
        char *buffer, loff_t pos, size_t count)
{
 int opal_rc;

 struct elog_obj *elog = to_elog_obj(kobj);


 if (!elog->buffer) {
  elog->buffer = kzalloc(elog->size, GFP_KERNEL);
  if (!elog->buffer)
   return -EIO;

  opal_rc = opal_read_elog(__pa(elog->buffer),
      elog->size, elog->id);
  if (opal_rc != OPAL_SUCCESS) {
   pr_err("ELOG: log read failed for log-id=%llx\n",
          elog->id);
   kfree(elog->buffer);
   elog->buffer = ((void*)0);
   return -EIO;
  }
 }

 memcpy(buffer, elog->buffer + pos, count);

 return count;
}
