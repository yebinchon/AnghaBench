
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ clamp; scalar_t__ round; } ;
typedef TYPE_1__ jerryx_arg_int_option_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 scalar_t__ JERRYX_ARG_FLOOR ;
 scalar_t__ JERRYX_ARG_NO_CLAMP ;
 scalar_t__ JERRYX_ARG_ROUND ;
 int JERRY_ERROR_TYPE ;
 double ceil (double) ;
 double floor (double) ;
 scalar_t__ isnan (double) ;
 int jerry_create_error (int ,int *) ;
 int jerry_create_undefined () ;

__attribute__((used)) static jerry_value_t
jerryx_arg_helper_process_double (double *d,
                                  double min,
                                  double max,
                                  jerryx_arg_int_option_t option)
{
  if (isnan (*d))
  {
    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "The number is NaN.");
  }

  if (option.clamp == JERRYX_ARG_NO_CLAMP)
  {
    if (*d > max || *d < min)
    {
      return jerry_create_error (JERRY_ERROR_TYPE,
                                 (jerry_char_t *) "The number is out of range.");
    }
  }
  else
  {
    *d = *d < min ? min : *d;
    *d = *d > max ? max : *d;
  }

  if (option.round == JERRYX_ARG_ROUND)
  {
    *d = (*d >= 0.0) ? floor (*d + 0.5) : ceil (*d - 0.5);
  }
  else if (option.round == JERRYX_ARG_FLOOR)
  {
    *d = floor (*d);
  }
  else
  {
    *d = ceil (*d);
  }

  return jerry_create_undefined ();
}
