
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int JERRY_UNUSED (int const) ;

__attribute__((used)) static bool
foreach_subset (const jerry_value_t name,
                const jerry_value_t value,
                void *user_data)
{
  JERRY_UNUSED (name);
  JERRY_UNUSED (value);
  int *count_p = (int *) (user_data);

  if (*count_p == 3)
  {
    return 0;
  }
  (*count_p)++;
  return 1;
}
