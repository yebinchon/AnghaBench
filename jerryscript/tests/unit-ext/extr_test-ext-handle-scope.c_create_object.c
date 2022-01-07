
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_create_object () ;
 int jerry_set_object_native_pointer (int ,int *,int *) ;
 int native_info ;

__attribute__((used)) static jerry_value_t
create_object (void)
{
  jerry_value_t obj = jerry_create_object ();
  jerry_set_object_native_pointer (obj, ((void*)0), &native_info);
  return obj;
}
