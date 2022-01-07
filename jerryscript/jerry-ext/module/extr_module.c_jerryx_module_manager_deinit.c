
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_release_value (int ) ;

__attribute__((used)) static void
jerryx_module_manager_deinit (void *user_data_p)
{
  jerry_release_value (*(jerry_value_t *) user_data_p);
}
