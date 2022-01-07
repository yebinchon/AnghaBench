
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_data ;
typedef char lit_utf8_byte_t ;
typedef int expected_data ;
typedef int ecma_stringbuilder_t ;
typedef int ecma_string_t ;


 int LIT_CHAR_1 ;
 int LIT_CHAR_2 ;
 int LIT_CHAR_3 ;
 int LIT_CHAR_LOWERCASE_A ;
 int LIT_CHAR_LOWERCASE_B ;
 int LIT_CHAR_LOWERCASE_C ;
 int LIT_MAGIC_STRING_STRING ;
 int LIT_MAGIC_STRING__EMPTY ;
 int TEST_ASSERT (int ) ;
 int TEST_INIT () ;
 int UINT16_MAX ;
 int * ecma_append_chars_to_string (int *,char const*,int,int) ;
 int ecma_compare_ecma_strings (int *,int *) ;
 int ecma_deref_ecma_string (int *) ;
 int ecma_finalize () ;
 int * ecma_get_magic_string (int ) ;
 int ecma_init () ;
 int * ecma_new_ecma_string_from_uint32 (int) ;
 int * ecma_new_ecma_string_from_utf8 (char const*,int) ;
 int ecma_stringbuilder_append (int *,int *) ;
 int ecma_stringbuilder_append_char (int *,int ) ;
 int ecma_stringbuilder_append_magic (int *,int ) ;
 int ecma_stringbuilder_append_raw (int *,char const*,int) ;
 int ecma_stringbuilder_create () ;
 int ecma_stringbuilder_create_from (int *) ;
 int ecma_stringbuilder_destroy (int *) ;
 int * ecma_stringbuilder_finalize (int *) ;
 int jmem_finalize () ;
 int jmem_init () ;

int
main (void)
{
  TEST_INIT ();

  jmem_init ();
  ecma_init ();

  {
    static const lit_utf8_byte_t string_data[] = "A simple string";

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (string_data, sizeof (string_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_magic (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_get_magic_string (LIT_MAGIC_STRING_STRING);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
  }

  {
    static const lit_utf8_byte_t string_data[] = "a";

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_LOWERCASE_A);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (string_data, sizeof (string_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "A simple string";
    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (string_data, sizeof (string_data) - 1);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append (&builder, str_p);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_string_t *str_p = ecma_get_magic_string (LIT_MAGIC_STRING__EMPTY);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_LOWERCASE_A);
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_LOWERCASE_B);
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_LOWERCASE_C);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (string_data, sizeof (string_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_1);
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_2);
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_3);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_new_ecma_string_from_uint32 (123);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = ecma_new_ecma_string_from_uint32 (234);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_1);
    ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);
    ecma_stringbuilder_append (&builder, uint_str_p);
    ecma_stringbuilder_append_magic (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    static const lit_utf8_byte_t expected_data[] = "1abc234string";
    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (expected_data, sizeof (expected_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = ecma_new_ecma_string_from_uint32 (234);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_1);
    ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);
    ecma_stringbuilder_append (&builder, uint_str_p);
    ecma_stringbuilder_append_magic (&builder, LIT_MAGIC_STRING_STRING);

    ecma_stringbuilder_destroy (&builder);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abcdefghijklmnop";
    const size_t count = UINT16_MAX / (sizeof (string_data) - 1) + 1;

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    for (size_t i = 0; i < count; i++)
    {
      ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);
    }
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);


    ecma_string_t *expected_p = ecma_get_magic_string (LIT_MAGIC_STRING__EMPTY);
    for (size_t i = 0; i < count; i++)
    {
      expected_p = ecma_append_chars_to_string (expected_p,
                                                string_data,
                                                sizeof (string_data) - 1,
                                                sizeof (string_data) - 1);
    }

    TEST_ASSERT (ecma_compare_ecma_strings (result_p, expected_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (expected_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = ecma_new_ecma_string_from_uint32 (234);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_stringbuilder_append_char (&builder, LIT_CHAR_1);
    ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);

    ecma_string_t *another_string = ecma_new_ecma_string_from_utf8 (string_data, sizeof (string_data) - 1);

    ecma_stringbuilder_append (&builder, uint_str_p);
    ecma_stringbuilder_append_magic (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    static const lit_utf8_byte_t expected_data[] = "1abc234string";
    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (expected_data, sizeof (expected_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
    ecma_deref_ecma_string (another_string);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = ecma_new_ecma_string_from_uint32 (234);

    ecma_stringbuilder_t builder = ecma_stringbuilder_create_from (uint_str_p);
    ecma_stringbuilder_append_raw (&builder, string_data, sizeof (string_data) - 1);
    ecma_stringbuilder_append_magic (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    static const lit_utf8_byte_t expected_data[] = "234abcstring";
    ecma_string_t *str_p = ecma_new_ecma_string_from_utf8 (expected_data, sizeof (expected_data) - 1);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_stringbuilder_t builder = ecma_stringbuilder_create ();
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    ecma_string_t *str_p = ecma_get_magic_string (LIT_MAGIC_STRING__EMPTY);
    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_string_t *str_p = ecma_get_magic_string (LIT_MAGIC_STRING__EMPTY);
    ecma_stringbuilder_t builder = ecma_stringbuilder_create_from (str_p);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  {
    ecma_string_t *str_p = ecma_get_magic_string (LIT_MAGIC_STRING_STRING);
    ecma_stringbuilder_t builder = ecma_stringbuilder_create_from (str_p);
    ecma_string_t *result_p = ecma_stringbuilder_finalize (&builder);

    TEST_ASSERT (ecma_compare_ecma_strings (result_p, str_p));
    ecma_deref_ecma_string (result_p);
    ecma_deref_ecma_string (str_p);
  }

  ecma_finalize ();
  jmem_finalize ();

  return 0;
}
