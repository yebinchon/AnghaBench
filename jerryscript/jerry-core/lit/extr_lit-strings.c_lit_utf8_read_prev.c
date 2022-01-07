
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_byte_t ;
typedef int ecma_char_t ;


 int JERRY_ASSERT (int const*) ;
 int lit_read_code_unit_from_utf8 (int const*,int *) ;
 int lit_utf8_decr (int const**) ;

ecma_char_t
lit_utf8_read_prev (const lit_utf8_byte_t **buf_p)
{
  JERRY_ASSERT (*buf_p);
  ecma_char_t ch;

  lit_utf8_decr (buf_p);
  lit_read_code_unit_from_utf8 (*buf_p, &ch);

  return ch;
}
