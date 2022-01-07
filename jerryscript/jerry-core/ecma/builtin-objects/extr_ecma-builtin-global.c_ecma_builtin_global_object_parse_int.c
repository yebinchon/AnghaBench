
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lit_utf8_size_t ;
typedef scalar_t__ lit_utf8_byte_t ;
typedef int int32_t ;
typedef int ecma_value_t ;
typedef scalar_t__ ecma_number_t ;
typedef scalar_t__ ecma_char_t ;


 scalar_t__ ECMA_NUMBER_MINUS_ONE ;
 scalar_t__ ECMA_NUMBER_ZERO ;
 int JERRY_ASSERT (scalar_t__) ;
 scalar_t__ LIT_CHAR_0 ;
 scalar_t__ LIT_CHAR_LOWERCASE_A ;
 scalar_t__ LIT_CHAR_LOWERCASE_X ;
 scalar_t__ LIT_CHAR_LOWERCASE_Z ;
 scalar_t__ LIT_CHAR_MINUS ;
 scalar_t__ LIT_CHAR_PLUS ;
 scalar_t__ LIT_CHAR_UPPERCASE_A ;
 scalar_t__ LIT_CHAR_UPPERCASE_X ;
 scalar_t__ LIT_CHAR_UPPERCASE_Z ;
 int ecma_get_number (int ,scalar_t__*) ;
 int ecma_is_value_empty (int ) ;
 int ecma_make_nan_value () ;
 int ecma_make_number_value (scalar_t__) ;
 int ecma_number_to_int32 (scalar_t__) ;
 int ecma_string_trim_helper (scalar_t__ const**,scalar_t__*) ;
 scalar_t__ lit_char_is_decimal_digit (scalar_t__) ;
 scalar_t__ lit_utf8_read_next (scalar_t__ const**) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_global_object_parse_int (const lit_utf8_byte_t *string_buff,

                                      lit_utf8_size_t string_buff_size,

                                      ecma_value_t radix)
{
  if (string_buff_size <= 0)
  {
    return ecma_make_nan_value ();
  }

  const lit_utf8_byte_t *string_curr_p = string_buff;


  ecma_string_trim_helper (&string_curr_p, &string_buff_size);

  const lit_utf8_byte_t *string_end_p = string_curr_p + string_buff_size;
  const lit_utf8_byte_t *start_p = string_curr_p;
  const lit_utf8_byte_t *end_p = string_end_p;

  if (string_curr_p >= string_end_p)
  {
    return ecma_make_nan_value ();
  }


  int sign = 1;


  ecma_char_t current = lit_utf8_read_next (&string_curr_p);
  if (current == LIT_CHAR_MINUS)
  {
    sign = -1;
  }


  if (current == LIT_CHAR_MINUS || current == LIT_CHAR_PLUS)
  {
    start_p = string_curr_p;
    if (string_curr_p < string_end_p)
    {
      current = lit_utf8_read_next (&string_curr_p);
    }
  }


  ecma_number_t radix_num;
  radix = ecma_get_number (radix, &radix_num);

  if (!ecma_is_value_empty (radix))
  {
    return radix;
  }

  int32_t rad = ecma_number_to_int32 (radix_num);


  bool strip_prefix = 1;


  if (rad != 0)
  {

    if (rad < 2 || rad > 36)
    {
      return ecma_make_nan_value ();
    }

    else if (rad != 16)
    {
      strip_prefix = 0;
    }
  }

  else
  {
    rad = 10;
  }


  if (strip_prefix
      && ((end_p - start_p) >= 2)
      && (current == LIT_CHAR_0))
  {
    ecma_char_t next = *string_curr_p;
    if (next == LIT_CHAR_LOWERCASE_X || next == LIT_CHAR_UPPERCASE_X)
    {

      start_p = ++string_curr_p;
      rad = 16;
    }
  }


  string_curr_p = start_p;
  while (string_curr_p < string_end_p)
  {
    ecma_char_t current_char = *string_curr_p++;
    int32_t current_number;

    if ((current_char >= LIT_CHAR_LOWERCASE_A && current_char <= LIT_CHAR_LOWERCASE_Z))
    {
      current_number = current_char - LIT_CHAR_LOWERCASE_A + 10;
    }
    else if ((current_char >= LIT_CHAR_UPPERCASE_A && current_char <= LIT_CHAR_UPPERCASE_Z))
    {
      current_number = current_char - LIT_CHAR_UPPERCASE_A + 10;
    }
    else if (lit_char_is_decimal_digit (current_char))
    {
      current_number = current_char - LIT_CHAR_0;
    }
    else
    {

      current_number = rad;
    }

    if (!(current_number < rad))
    {
      end_p = --string_curr_p;
      break;
    }
  }


  if (end_p == start_p)
  {
    return ecma_make_nan_value ();
  }

  ecma_number_t value = ECMA_NUMBER_ZERO;
  ecma_number_t multiplier = 1.0f;


  string_curr_p = end_p;

  while (string_curr_p > start_p)
  {
    ecma_char_t current_char = *(--string_curr_p);
    ecma_number_t current_number = ECMA_NUMBER_MINUS_ONE;

    if ((current_char >= LIT_CHAR_LOWERCASE_A && current_char <= LIT_CHAR_LOWERCASE_Z))
    {
      current_number = (ecma_number_t) current_char - LIT_CHAR_LOWERCASE_A + 10;
    }
    else if ((current_char >= LIT_CHAR_UPPERCASE_A && current_char <= LIT_CHAR_UPPERCASE_Z))
    {
      current_number = (ecma_number_t) current_char - LIT_CHAR_UPPERCASE_A + 10;
    }
    else
    {
      JERRY_ASSERT (lit_char_is_decimal_digit (current_char));
      current_number = (ecma_number_t) current_char - LIT_CHAR_0;
    }

    value += current_number * multiplier;
    multiplier *= (ecma_number_t) rad;
  }


  if (sign < 0)
  {
    value *= (ecma_number_t) sign;
  }

  return ecma_make_number_value (value);
}
