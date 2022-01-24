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
typedef  int /*<<< orphan*/  valid_utf8_string_1 ;
typedef  int lit_utf8_size_t ;
typedef  int const lit_utf8_byte_t ;
typedef  int /*<<< orphan*/  invalid_cesu8_string_3 ;
typedef  int /*<<< orphan*/  invalid_cesu8_string_2 ;
typedef  int /*<<< orphan*/  invalid_cesu8_string_1 ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  size_t ecma_length_t ;
typedef  scalar_t__ ecma_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int const*,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int const*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int,int const*) ; 
 int FUNC11 (int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int const**) ; 
 int /*<<< orphan*/  FUNC13 (int const**) ; 
 scalar_t__ FUNC14 (int const*) ; 
 scalar_t__ FUNC15 (int const*) ; 
 scalar_t__ FUNC16 (int const**) ; 
 scalar_t__ FUNC17 (int const**) ; 
 size_t FUNC18 (int const*,int) ; 
 int max_bytes_in_string ; 
 int max_code_units_in_string ; 
 int FUNC19 () ; 
 int test_iters ; 
 int test_subiters ; 

int
FUNC20 (void)
{
  FUNC1 ();

  FUNC9 ();
  FUNC4 ();

  lit_utf8_byte_t cesu8_string[max_bytes_in_string];
  ecma_char_t code_units[max_code_units_in_string];
  const lit_utf8_byte_t *saved_positions[max_code_units_in_string];

  for (int i = 0; i < test_iters; i++)
  {
    lit_utf8_size_t cesu8_string_size = (i == 0) ? 0 : (lit_utf8_size_t) (FUNC19 () % max_bytes_in_string);
    ecma_length_t length = FUNC7 (cesu8_string, cesu8_string_size);

    ecma_string_t *char_collection_string_p = FUNC5 (cesu8_string, cesu8_string_size);
    ecma_length_t char_collection_len = FUNC6 (char_collection_string_p);
    FUNC0 (char_collection_len == length);
    FUNC2 (char_collection_string_p);

    FUNC0 (FUNC18 (cesu8_string, cesu8_string_size) == length);

    const lit_utf8_byte_t *curr_p = cesu8_string;
    const lit_utf8_byte_t *end_p = cesu8_string + cesu8_string_size;

    ecma_length_t calculated_length = 0;
    ecma_length_t code_units_count = 0;

    while (curr_p < end_p)
    {
      code_units[code_units_count] = FUNC14 (curr_p);
      saved_positions[code_units_count] = curr_p;
      code_units_count++;
      calculated_length++;

      FUNC13 (&curr_p);
    }

    FUNC0 (length == calculated_length);

    if (code_units_count > 0)
    {
      for (int j = 0; j < test_subiters; j++)
      {
        ecma_length_t index = (ecma_length_t) FUNC19 () % code_units_count;
        curr_p = saved_positions[index];
        FUNC0 (FUNC14 (curr_p) == code_units[index]);
      }
    }

    curr_p = (lit_utf8_byte_t *) end_p;
    while (curr_p > cesu8_string)
    {
      FUNC0 (code_units_count > 0);
      calculated_length--;
      FUNC0 (code_units[calculated_length] == FUNC15 (curr_p));
      FUNC12 (&curr_p);
    }

    FUNC0 (calculated_length == 0);

    while (curr_p < end_p)
    {
      ecma_char_t code_unit = FUNC16 (&curr_p);
      FUNC0 (code_unit == code_units[calculated_length]);
      calculated_length++;
    }

    FUNC0 (length == calculated_length);

    while (curr_p > cesu8_string)
    {
      FUNC0 (code_units_count > 0);
      calculated_length--;
      FUNC0 (code_units[calculated_length] == FUNC17 (&curr_p));
    }

    FUNC0 (calculated_length == 0);
  }

  /* Overlong-encoded code point */
  lit_utf8_byte_t invalid_cesu8_string_1[] = {0xC0, 0x82};
  FUNC0 (!FUNC11 (invalid_cesu8_string_1, sizeof (invalid_cesu8_string_1)));

  /* Overlong-encoded code point */
  lit_utf8_byte_t invalid_cesu8_string_2[] = {0xE0, 0x80, 0x81};
  FUNC0 (!FUNC11 (invalid_cesu8_string_2, sizeof (invalid_cesu8_string_2)));

  /* Pair of surrogates: 0xD901 0xDFF0 which encode Unicode character 0x507F0 */
  lit_utf8_byte_t invalid_cesu8_string_3[] = {0xED, 0xA4, 0x81, 0xED, 0xBF, 0xB0};
  FUNC0 (FUNC11 (invalid_cesu8_string_3, sizeof (invalid_cesu8_string_3)));

  /* Isolated high surrogate 0xD901 */
  lit_utf8_byte_t valid_utf8_string_1[] = {0xED, 0xA4, 0x81};
  FUNC0 (FUNC11 (valid_utf8_string_1, sizeof (valid_utf8_string_1)));

  lit_utf8_byte_t res_buf[3];
  lit_utf8_size_t res_size;

  res_size = FUNC10 (0x73, res_buf);
  FUNC0 (res_size == 1);
  FUNC0 (res_buf[0] == 0x73);

  res_size = FUNC10 (0x41A, res_buf);
  FUNC0 (res_size == 2);
  FUNC0 (res_buf[0] == 0xD0);
  FUNC0 (res_buf[1] == 0x9A);

  res_size = FUNC10 (0xD7FF, res_buf);
  FUNC0 (res_size == 3);
  FUNC0 (res_buf[0] == 0xED);
  FUNC0 (res_buf[1] == 0x9F);
  FUNC0 (res_buf[2] == 0xBF);

  FUNC3 ();
  FUNC8 ();

  return 0;
}