
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct dump_obj {int buffer; } ;


 int kfree (struct dump_obj*) ;
 struct dump_obj* to_dump_obj (struct kobject*) ;
 int vfree (int ) ;

__attribute__((used)) static void dump_release(struct kobject *kobj)
{
 struct dump_obj *dump;

 dump = to_dump_obj(kobj);
 vfree(dump->buffer);
 kfree(dump);
}
