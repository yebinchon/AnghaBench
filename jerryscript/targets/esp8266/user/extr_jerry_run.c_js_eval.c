
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_PARSE_NO_OPTS ;
 int jerry_eval (int *,size_t const,int ) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;

int js_eval (const char *source_p, const size_t source_size)
{
  jerry_value_t res = jerry_eval ((jerry_char_t *) source_p,
                                  source_size,
                                  JERRY_PARSE_NO_OPTS);
  if (jerry_value_is_error (res)) {
    jerry_release_value (res);
    return -1;
  }

  jerry_release_value (res);

  return 0;
}
