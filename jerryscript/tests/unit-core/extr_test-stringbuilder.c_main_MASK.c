#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  string_data ;
typedef  char lit_utf8_byte_t ;
typedef  int /*<<< orphan*/  expected_data ;
typedef  int /*<<< orphan*/  ecma_stringbuilder_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIT_CHAR_1 ; 
 int /*<<< orphan*/  LIT_CHAR_2 ; 
 int /*<<< orphan*/  LIT_CHAR_3 ; 
 int /*<<< orphan*/  LIT_CHAR_LOWERCASE_A ; 
 int /*<<< orphan*/  LIT_CHAR_LOWERCASE_B ; 
 int /*<<< orphan*/  LIT_CHAR_LOWERCASE_C ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_STRING ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING__EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

int
FUNC20 (void)
{
  FUNC1 ();

  FUNC19 ();
  FUNC7 ();

  {
    static const lit_utf8_byte_t string_data[] = "A simple string";

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC13 (&builder, string_data, sizeof (string_data) - 1);
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC9 (string_data, sizeof (string_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC12 (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC6 (LIT_MAGIC_STRING_STRING);
    FUNC0 (FUNC3 (result_p, str_p));
  }

  {
    static const lit_utf8_byte_t string_data[] = "a";

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_LOWERCASE_A);
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC9 (string_data, sizeof (string_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "A simple string";
    ecma_string_t *str_p = FUNC9 (string_data, sizeof (string_data) - 1);

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC10 (&builder, str_p);
    ecma_string_t *result_p = FUNC17 (&builder);

    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_string_t *str_p = FUNC6 (LIT_MAGIC_STRING__EMPTY);

    ecma_stringbuilder_t builder = FUNC14 ();
    ecma_string_t *result_p = FUNC17 (&builder);

    FUNC0 (FUNC3 (result_p, str_p));
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_LOWERCASE_A);
    FUNC11 (&builder, LIT_CHAR_LOWERCASE_B);
    FUNC11 (&builder, LIT_CHAR_LOWERCASE_C);
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC9 (string_data, sizeof (string_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_1);
    FUNC11 (&builder, LIT_CHAR_2);
    FUNC11 (&builder, LIT_CHAR_3);
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC8 (123);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = FUNC8 (234);

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_1);
    FUNC13 (&builder, string_data, sizeof (string_data) - 1);
    FUNC10 (&builder, uint_str_p);
    FUNC12 (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = FUNC17 (&builder);

    static const lit_utf8_byte_t expected_data[] = "1abc234string";
    ecma_string_t *str_p = FUNC9 (expected_data, sizeof (expected_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = FUNC8 (234);

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_1);
    FUNC13 (&builder, string_data, sizeof (string_data) - 1);
    FUNC10 (&builder, uint_str_p);
    FUNC12 (&builder, LIT_MAGIC_STRING_STRING);
    /* Test that we do not leak. */
    FUNC16 (&builder);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abcdefghijklmnop";
    const size_t count = UINT16_MAX / (sizeof (string_data) - 1) + 1;

    ecma_stringbuilder_t builder = FUNC14 ();
    for (size_t i = 0; i < count; i++)
    {
      FUNC13 (&builder, string_data, sizeof (string_data) - 1);
    }
    ecma_string_t *result_p = FUNC17 (&builder);


    ecma_string_t *expected_p = FUNC6 (LIT_MAGIC_STRING__EMPTY);
    for (size_t i = 0; i < count; i++)
    {
      expected_p = FUNC2 (expected_p,
                                                string_data,
                                                sizeof (string_data) - 1,
                                                sizeof (string_data) - 1);
    }

    FUNC0 (FUNC3 (result_p, expected_p));
    FUNC4 (result_p);
    FUNC4 (expected_p);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = FUNC8 (234);

    ecma_stringbuilder_t builder = FUNC14 ();
    FUNC11 (&builder, LIT_CHAR_1);
    FUNC13 (&builder, string_data, sizeof (string_data) - 1);

    ecma_string_t *another_string = FUNC9 (string_data, sizeof (string_data) - 1);

    FUNC10 (&builder, uint_str_p);
    FUNC12 (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = FUNC17 (&builder);

    static const lit_utf8_byte_t expected_data[] = "1abc234string";
    ecma_string_t *str_p = FUNC9 (expected_data, sizeof (expected_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
    FUNC4 (another_string);
  }

  {
    static const lit_utf8_byte_t string_data[] = "abc";
    ecma_string_t *uint_str_p = FUNC8 (234);

    ecma_stringbuilder_t builder = FUNC15 (uint_str_p);
    FUNC13 (&builder, string_data, sizeof (string_data) - 1);
    FUNC12 (&builder, LIT_MAGIC_STRING_STRING);
    ecma_string_t *result_p = FUNC17 (&builder);

    static const lit_utf8_byte_t expected_data[] = "234abcstring";
    ecma_string_t *str_p = FUNC9 (expected_data, sizeof (expected_data) - 1);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_stringbuilder_t builder = FUNC14 ();
    ecma_string_t *result_p = FUNC17 (&builder);

    ecma_string_t *str_p = FUNC6 (LIT_MAGIC_STRING__EMPTY);
    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_string_t *str_p = FUNC6 (LIT_MAGIC_STRING__EMPTY);
    ecma_stringbuilder_t builder = FUNC15 (str_p);
    ecma_string_t *result_p = FUNC17 (&builder);

    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  {
    ecma_string_t *str_p = FUNC6 (LIT_MAGIC_STRING_STRING);
    ecma_stringbuilder_t builder = FUNC15 (str_p);
    ecma_string_t *result_p = FUNC17 (&builder);

    FUNC0 (FUNC3 (result_p, str_p));
    FUNC4 (result_p);
    FUNC4 (str_p);
  }

  FUNC5 ();
  FUNC18 ();

  return 0;
}