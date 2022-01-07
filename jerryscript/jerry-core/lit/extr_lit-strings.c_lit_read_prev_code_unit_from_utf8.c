
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;
typedef int ecma_char_t ;


 int JERRY_ASSERT (int const*) ;
 int lit_read_code_unit_from_utf8 (int const*,int *) ;
 int lit_utf8_decr (int const**) ;

lit_utf8_size_t
lit_read_prev_code_unit_from_utf8 (const lit_utf8_byte_t *buf_p,
                                   ecma_char_t *code_point)
{
  JERRY_ASSERT (buf_p);

  lit_utf8_decr (&buf_p);
  return lit_read_code_unit_from_utf8 (buf_p, code_point);
}
