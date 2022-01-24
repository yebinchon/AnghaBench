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
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_FEATURE_SYMBOL ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22 (void)
{
  FUNC14 (JERRY_INIT_EMPTY);

  jerry_value_t object = FUNC3 ();

  jerry_value_t prop_name_1 = FUNC4 ((const jerry_char_t *) "foo");
  jerry_value_t prop_name_2 = FUNC4 ((const jerry_char_t *) "non_hidden_prop");
  jerry_value_t prop_name_3;

  if (FUNC15 (JERRY_FEATURE_SYMBOL))
  {
    jerry_value_t prop_name_3_desc = FUNC4 ((const jerry_char_t *) "bar");
    prop_name_3 = FUNC5 (prop_name_3_desc);
    FUNC16 (prop_name_3_desc);
  }
  else
  {
    prop_name_3 = FUNC4 ((const jerry_char_t *) "non_hidden_string_prop");
  }

  jerry_value_t internal_prop_name_1 = FUNC4 ((const jerry_char_t *) "hidden_foo");
  jerry_value_t internal_prop_name_2 = FUNC4 ((const jerry_char_t *) "hidden_prop");
  jerry_value_t internal_prop_name_3;

  if (FUNC15 (JERRY_FEATURE_SYMBOL))
  {
    jerry_value_t internal_prop_name_3_desc = FUNC4 ((const jerry_char_t *) "bar");
    internal_prop_name_3 = FUNC5 (internal_prop_name_3_desc);
    FUNC16 (internal_prop_name_3_desc);
  }
  else
  {
    internal_prop_name_3 = FUNC4 ((const jerry_char_t *) "hidden_string_prop");
  }

  jerry_value_t prop_value_1 = FUNC2 (5.5);
  jerry_value_t prop_value_2 = FUNC2 (6.5);
  jerry_value_t prop_value_3 = FUNC2 (7.5);

  jerry_value_t internal_prop_value_1 = FUNC2 (8.5);
  jerry_value_t internal_prop_value_2 = FUNC2 (9.5);
  jerry_value_t internal_prop_value_3 = FUNC2 (10.5);

  /* Test the normal [[Set]] method */
  bool set_result_1 = FUNC18 (object, prop_name_1, prop_value_1);
  bool set_result_2 = FUNC18 (object, prop_name_2, prop_value_2);
  bool set_result_3 = FUNC18 (object, prop_name_3, prop_value_3);

  FUNC0 (set_result_1);
  FUNC0 (set_result_2);
  FUNC0 (set_result_3);

  /* Test the internal [[Set]] method */
  bool set_internal_result_1 = FUNC17 (object, internal_prop_name_1, internal_prop_value_1);
  bool set_internal_result_2 = FUNC17 (object, internal_prop_name_2, internal_prop_value_2);
  bool set_internal_result_3 = FUNC17 (object, internal_prop_name_3, internal_prop_value_3);

  FUNC0 (set_internal_result_1);
  FUNC0 (set_internal_result_2);
  FUNC0 (set_internal_result_3);

  /* Test the normal [[Has]] method. */
  jerry_value_t has_result_1 = FUNC13 (object, prop_name_1);
  jerry_value_t has_result_2 = FUNC13 (object, prop_name_2);
  jerry_value_t has_result_3 = FUNC13 (object, prop_name_3);
  jerry_value_t has_result_4 = FUNC13 (object, internal_prop_name_1);
  jerry_value_t has_result_5 = FUNC13 (object, internal_prop_name_2);
  jerry_value_t has_result_6 = FUNC13 (object, internal_prop_name_3);

  FUNC0 (FUNC19 (has_result_1) && FUNC8 (has_result_1));
  FUNC0 (FUNC19 (has_result_2) && FUNC8 (has_result_2));
  FUNC0 (FUNC19 (has_result_3) && FUNC8 (has_result_3));
  FUNC0 (FUNC19 (has_result_4) && !FUNC8 (has_result_4));
  FUNC0 (FUNC19 (has_result_5) && !FUNC8 (has_result_5));
  FUNC0 (FUNC19 (has_result_6) && !FUNC8 (has_result_6));

  FUNC16 (has_result_1);
  FUNC16 (has_result_2);
  FUNC16 (has_result_3);
  FUNC16 (has_result_4);
  FUNC16 (has_result_5);
  FUNC16 (has_result_6);

  /* Test the internal [[Has]] method. */
  bool has_internal_result_1 = FUNC12 (object, prop_name_1);
  bool has_internal_result_2 = FUNC12 (object, prop_name_2);
  bool has_internal_result_3 = FUNC12 (object, prop_name_3);
  bool has_internal_result_4 = FUNC12 (object, internal_prop_name_1);
  bool has_internal_result_5 = FUNC12 (object, internal_prop_name_2);
  bool has_internal_result_6 = FUNC12 (object, internal_prop_name_3);

  FUNC0 (!has_internal_result_1);
  FUNC0 (!has_internal_result_2);
  FUNC0 (!has_internal_result_3);
  FUNC0 (has_internal_result_4);
  FUNC0 (has_internal_result_5);
  FUNC0 (has_internal_result_6);

  /* Test the normal [[Get]] method. */
  jerry_value_t get_result_1 = FUNC11 (object, prop_name_1);
  jerry_value_t get_result_2 = FUNC11 (object, prop_name_2);
  jerry_value_t get_result_3 = FUNC11 (object, prop_name_3);
  jerry_value_t get_result_4 = FUNC11 (object, internal_prop_name_1);
  jerry_value_t get_result_5 = FUNC11 (object, internal_prop_name_2);
  jerry_value_t get_result_6 = FUNC11 (object, internal_prop_name_3);

  FUNC0 (FUNC20 (get_result_1) && FUNC10 (get_result_1) == 5.5);
  FUNC0 (FUNC20 (get_result_2) && FUNC10 (get_result_2) == 6.5);
  FUNC0 (FUNC20 (get_result_3) && FUNC10 (get_result_3) == 7.5);
  FUNC0 (FUNC21 (get_result_4));
  FUNC0 (FUNC21 (get_result_5));
  FUNC0 (FUNC21 (get_result_6));

  FUNC16 (get_result_1);
  FUNC16 (get_result_2);
  FUNC16 (get_result_3);
  FUNC16 (get_result_4);
  FUNC16 (get_result_5);
  FUNC16 (get_result_6);

  /* Test the internal [[Get]] method. */
  jerry_value_t get_internal_result_1 = FUNC9 (object, prop_name_1);
  jerry_value_t get_internal_result_2 = FUNC9 (object, prop_name_2);
  jerry_value_t get_internal_result_3 = FUNC9 (object, prop_name_3);
  jerry_value_t get_internal_result_4 = FUNC9 (object, internal_prop_name_1);
  jerry_value_t get_internal_result_5 = FUNC9 (object, internal_prop_name_2);
  jerry_value_t get_internal_result_6 = FUNC9 (object, internal_prop_name_3);

  FUNC0 (FUNC21 (get_internal_result_1));
  FUNC0 (FUNC21 (get_internal_result_2));
  FUNC0 (FUNC21 (get_internal_result_3));
  FUNC0 (FUNC20 (get_internal_result_4) && FUNC10 (get_internal_result_4) == 8.5);
  FUNC0 (FUNC20 (get_internal_result_5) && FUNC10 (get_internal_result_5) == 9.5);
  FUNC0 (FUNC20 (get_internal_result_6) && FUNC10 (get_internal_result_6) == 10.5);

  FUNC16 (get_internal_result_1);
  FUNC16 (get_internal_result_2);
  FUNC16 (get_internal_result_3);
  FUNC16 (get_internal_result_4);
  FUNC16 (get_internal_result_5);
  FUNC16 (get_internal_result_6);

  /* Test the normal [[Delete]] method. */
  bool delete_result_1 = FUNC7 (object, prop_name_1);
  bool delete_result_2 = FUNC7 (object, prop_name_2);
  bool delete_result_3 = FUNC7 (object, prop_name_3);
  bool delete_result_4 = FUNC7 (object, internal_prop_name_1);
  bool delete_result_5 = FUNC7 (object, internal_prop_name_2);
  bool delete_result_6 = FUNC7 (object, internal_prop_name_3);

  FUNC0 (delete_result_1);
  FUNC0 (delete_result_2);
  FUNC0 (delete_result_3);
  FUNC0 (delete_result_4);
  FUNC0 (delete_result_5);
  FUNC0 (delete_result_6);

  jerry_value_t has_after_delete_result_1 = FUNC13 (object, prop_name_1);
  jerry_value_t has_after_delete_result_2 = FUNC13 (object, prop_name_2);
  jerry_value_t has_after_delete_result_3 = FUNC13 (object, prop_name_3);
  bool has_after_delete_result_4 = FUNC12 (object, internal_prop_name_1);
  bool has_after_delete_result_5 = FUNC12 (object, internal_prop_name_2);
  bool has_after_delete_result_6 = FUNC12 (object, internal_prop_name_3);

  FUNC0 (FUNC19 (has_after_delete_result_1)
               && !FUNC8 (has_after_delete_result_1));
  FUNC0 (FUNC19 (has_after_delete_result_2)
               && !FUNC8 (has_after_delete_result_2));
  FUNC0 (FUNC19 (has_after_delete_result_3)
               && !FUNC8 (has_after_delete_result_3));
  FUNC0 (has_after_delete_result_4);
  FUNC0 (has_after_delete_result_5);
  FUNC0 (has_after_delete_result_6);

  FUNC16 (has_after_delete_result_1);
  FUNC16 (has_after_delete_result_2);
  FUNC16 (has_after_delete_result_3);

  /* Test the internal [[Delete]] method. */
  bool delete_internal_result_4 = FUNC6 (object, internal_prop_name_1);
  bool delete_internal_result_5 = FUNC6 (object, internal_prop_name_2);
  bool delete_internal_result_6 = FUNC6 (object, internal_prop_name_3);

  FUNC0 (delete_internal_result_4);
  FUNC0 (delete_internal_result_5);
  FUNC0 (delete_internal_result_6);

  bool has_after_internal_delete_result_1 = FUNC12 (object, internal_prop_name_1);
  bool has_after_internal_delete_result_2 = FUNC12 (object, internal_prop_name_2);
  bool has_after_internal_delete_result_3 = FUNC12 (object, internal_prop_name_3);

  FUNC0 (!has_after_internal_delete_result_1);
  FUNC0 (!has_after_internal_delete_result_2);
  FUNC0 (!has_after_internal_delete_result_3);

  /* Cleanup */
  FUNC16 (prop_value_3);
  FUNC16 (prop_value_2);
  FUNC16 (prop_value_1);

  FUNC16 (prop_name_3);
  FUNC16 (prop_name_2);
  FUNC16 (prop_name_1);

  FUNC16 (internal_prop_value_3);
  FUNC16 (internal_prop_value_2);
  FUNC16 (internal_prop_value_1);

  FUNC16 (internal_prop_name_3);
  FUNC16 (internal_prop_name_2);
  FUNC16 (internal_prop_name_1);

  FUNC16 (object);

  FUNC1 ();

  return 0;
}