
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_handle_scope ;
typedef int jerry_value_t ;


 int create_object () ;
 int jerryx_close_handle_scope (int ) ;
 int jerryx_create_handle (int ) ;
 int jerryx_open_handle_scope (int *) ;

__attribute__((used)) static void
test_handle_scope_val (void)
{
  jerryx_handle_scope scope;
  jerryx_open_handle_scope (&scope);
  jerry_value_t obj = jerryx_create_handle (create_object ());
  (void) obj;
  jerryx_close_handle_scope (scope);
}
