
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int ecma_finalize () ;
 int ecma_init () ;
 int jmem_finalize () ;
 int jmem_init () ;
 int lexer_hex_to_character (int ,char const*,int) ;
 size_t lit_char_get_utf8_length (int ) ;

int
main (void)
{
  TEST_INIT ();

  jmem_init ();
  ecma_init ();

  const uint8_t _1_byte_long1[] = "\\u007F";
  const uint8_t _1_byte_long2[] = "\\u0000";
  const uint8_t _1_byte_long3[] = "\\u0065";

  const uint8_t _2_byte_long1[] = "\\u008F";
  const uint8_t _2_byte_long2[] = "\\u00FF";
  const uint8_t _2_byte_long3[] = "\\u07FF";

  const uint8_t _3_byte_long1[] = "\\u08FF";
  const uint8_t _3_byte_long2[] = "\\u0FFF";
  const uint8_t _3_byte_long3[] = "\\uFFFF";

  size_t length;


  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _1_byte_long1 + 2, 4));
  TEST_ASSERT (length == 1);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _1_byte_long2 + 2, 4));
  TEST_ASSERT (length == 1);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _1_byte_long3 + 2, 4));
  TEST_ASSERT (length == 1);


  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _2_byte_long1 + 2, 4));
  TEST_ASSERT (length == 2);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _2_byte_long2 + 2, 4));
  TEST_ASSERT (length == 2);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _2_byte_long3 + 2, 4));
  TEST_ASSERT (length == 2);


  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _3_byte_long1 + 2, 4));
  TEST_ASSERT (length != 2);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _3_byte_long2 + 2, 4));
  TEST_ASSERT (length == 3);

  length = lit_char_get_utf8_length (lexer_hex_to_character (0, _3_byte_long3 + 2, 4));
  TEST_ASSERT (length == 3);

  ecma_finalize ();
  jmem_finalize ();

  return 0;
}
