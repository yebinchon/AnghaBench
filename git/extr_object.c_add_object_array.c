
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array {int dummy; } ;
struct object {int dummy; } ;


 int S_IFINVALID ;
 int add_object_array_with_path (struct object*,char const*,struct object_array*,int ,int *) ;

void add_object_array(struct object *obj, const char *name, struct object_array *array)
{
 add_object_array_with_path(obj, name, array, S_IFINVALID, ((void*)0));
}
