
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int nr; scalar_t__ oid; } ;
typedef int (* for_each_oid_fn ) (scalar_t__,void*) ;



int oid_array_for_each(struct oid_array *array,
         for_each_oid_fn fn,
         void *data)
{
 int i;



 for (i = 0; i < array->nr; i++) {
  int ret = fn(array->oid + i, data);
  if (ret)
   return ret;
 }
 return 0;
}
