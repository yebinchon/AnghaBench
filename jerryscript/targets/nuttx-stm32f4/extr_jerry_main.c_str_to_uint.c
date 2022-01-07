
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int JERRY_FEATURE_ERROR_MESSAGES ;
 int assert (int ) ;
 int jerry_is_feature_enabled (int ) ;

__attribute__((used)) static uint32_t
str_to_uint (const char *num_str_p,
             char **out_p)
{
  assert (jerry_is_feature_enabled (JERRY_FEATURE_ERROR_MESSAGES));

  uint32_t result = 0;

  while (*num_str_p >= '0' && *num_str_p <= '9')
  {
    result *= 10;
    result += (uint32_t) (*num_str_p - '0');
    num_str_p++;
  }

  if (out_p != ((void*)0))
  {
    *out_p = num_str_p;
  }

  return result;
}
