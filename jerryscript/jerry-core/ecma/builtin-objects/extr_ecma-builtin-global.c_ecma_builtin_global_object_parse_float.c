
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lit_utf8_size_t ;
typedef scalar_t__ lit_utf8_byte_t ;
typedef int ecma_value_t ;
typedef int ecma_number_t ;
typedef scalar_t__ ecma_char_t ;


 int ECMA_NUMBER_MINUS_ONE ;
 scalar_t__ LIT_CHAR_DOT ;
 scalar_t__ LIT_CHAR_LOWERCASE_E ;
 scalar_t__ LIT_CHAR_MINUS ;
 scalar_t__ LIT_CHAR_PLUS ;
 scalar_t__ LIT_CHAR_UPPERCASE_E ;
 int LIT_MAGIC_STRING_INFINITY_UL ;
 int ecma_make_nan_value () ;
 int ecma_make_number_value (int ) ;
 int ecma_number_make_infinity (int) ;
 int ecma_string_trim_helper (scalar_t__ const**,scalar_t__*) ;
 int ecma_utf8_string_to_number (scalar_t__ const*,scalar_t__) ;
 scalar_t__ lit_char_is_decimal_digit (scalar_t__) ;
 scalar_t__* lit_get_magic_string_utf8 (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_global_object_parse_float (const lit_utf8_byte_t *string_buff,

                                        lit_utf8_size_t string_buff_size)

{
  if (string_buff_size <= 0)
  {
    return ecma_make_nan_value ();
  }

  const lit_utf8_byte_t *str_curr_p = string_buff;


  ecma_string_trim_helper (&str_curr_p, &string_buff_size);

  const lit_utf8_byte_t *str_end_p = str_curr_p + string_buff_size;
  const lit_utf8_byte_t *start_p = str_curr_p;
  const lit_utf8_byte_t *end_p = str_end_p;

  bool sign = 0;
  ecma_char_t current;

  if (str_curr_p < str_end_p)
  {

    current = *str_curr_p;
    if (current == LIT_CHAR_MINUS)
    {
      sign = 1;
    }

    if (current == LIT_CHAR_MINUS || current == LIT_CHAR_PLUS)
    {

      start_p = ++str_curr_p;
    }
  }

  const lit_utf8_byte_t *infinity_str_p = lit_get_magic_string_utf8 (LIT_MAGIC_STRING_INFINITY_UL);
  lit_utf8_byte_t *infinity_str_curr_p = (lit_utf8_byte_t *) infinity_str_p;
  lit_utf8_byte_t *infinity_str_end_p = infinity_str_curr_p + sizeof (*infinity_str_p);


  while (str_curr_p < str_end_p
         && *str_curr_p++ == *infinity_str_curr_p++)
  {
    if (infinity_str_curr_p == infinity_str_end_p)
    {

      return ecma_make_number_value (ecma_number_make_infinity (sign));
    }
  }


  str_curr_p = start_p;


  if (str_curr_p >= str_end_p)
  {
    return ecma_make_nan_value ();
  }


  str_curr_p = start_p;

  current = *str_curr_p;

  bool has_whole_part = 0;
  bool has_fraction_part = 0;


  if (lit_char_is_decimal_digit (current))
  {
    has_whole_part = 1;
    str_curr_p++;

    while (str_curr_p < str_end_p)
    {
      current = *str_curr_p++;
      if (!lit_char_is_decimal_digit (current))
      {
        str_curr_p--;
        break;
      }
    }
  }



  end_p = str_curr_p;
  if (str_curr_p < str_end_p)
  {
    current = *str_curr_p;


    if (current == LIT_CHAR_DOT)
    {
      str_curr_p++;

      if (str_curr_p < str_end_p)
      {
        current = *str_curr_p;

        if (lit_char_is_decimal_digit (current))
        {
          has_fraction_part = 1;


          while (str_curr_p < str_end_p)
          {
            current = *str_curr_p++;
            if (!lit_char_is_decimal_digit (current))
            {
              str_curr_p--;
              break;
            }
          }


          end_p = str_curr_p;
        }
      }
    }
  }


  if (str_curr_p < str_end_p)
  {
    current = *str_curr_p++;
  }


  if ((current == LIT_CHAR_LOWERCASE_E || current == LIT_CHAR_UPPERCASE_E)
      && (has_whole_part || has_fraction_part)
      && str_curr_p < str_end_p)
  {
    current = *str_curr_p++;


    if ((current == LIT_CHAR_PLUS || current == LIT_CHAR_MINUS)
         && str_curr_p < str_end_p)
    {
      current = *str_curr_p++;
    }

    if (lit_char_is_decimal_digit (current))
    {

      while (str_curr_p < str_end_p)
      {
        current = *str_curr_p++;
        if (!lit_char_is_decimal_digit (current))
        {
          str_curr_p--;
          break;
        }
      }


      end_p = str_curr_p;
    }
  }


  if (start_p == end_p)
  {
    return ecma_make_nan_value ();
  }


  ecma_number_t ret_num = ecma_utf8_string_to_number (start_p, (lit_utf8_size_t) (end_p - start_p));

  if (sign)
  {
    ret_num *= ECMA_NUMBER_MINUS_ONE;
  }

  return ecma_make_number_value (ret_num);
}
