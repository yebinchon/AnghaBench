
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int TEST_ASSERT (int) ;
 int jerryx_module_clear_cache (int const,int ,int) ;
 int resolvers ;

__attribute__((used)) static jerry_value_t
handle_clear_require_cache (const jerry_value_t js_function,
                            const jerry_value_t this_val,
                            const jerry_value_t args_p[],
                            const jerry_length_t args_count)
{
  (void) js_function;
  (void) this_val;
  (void) args_count;

  TEST_ASSERT (args_count == 1);
  jerryx_module_clear_cache (args_p[0], resolvers, 3);

  return 0;
}
