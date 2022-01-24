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
typedef  int /*<<< orphan*/  set_src ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int jerry_length_t ;
typedef  char jerry_char_t ;
typedef  int /*<<< orphan*/  get_src_little_endian ;
typedef  int /*<<< orphan*/  get_src ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_BIN_OP_STRICT_EQUAL ; 
 scalar_t__ JERRY_ERROR_RANGE ; 
 scalar_t__ JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  JERRY_FEATURE_DATAVIEW ; 
 int /*<<< orphan*/  JERRY_FEATURE_TYPEDARRAY ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21 (void)
{
  if (!FUNC14 (JERRY_FEATURE_DATAVIEW))
  {
    FUNC15 (JERRY_LOG_LEVEL_ERROR, "DataView support is disabled!\n");
    return 0;
  }

  /* DataView builtin requires the TypedArray builtin */
  FUNC0 (FUNC14 (JERRY_FEATURE_TYPEDARRAY));

  FUNC13 (JERRY_INIT_EMPTY);

  /* Test accessors */
  jerry_value_t arraybuffer = FUNC3 (16);
  jerry_value_t view1 = FUNC4 (arraybuffer, 0, 16);
  FUNC0 (!FUNC19 (view1));
  FUNC0 (FUNC18 (view1));

  jerry_length_t byteOffset = 0;
  jerry_length_t byteLength = 0;;
  jerry_value_t internal_buffer = FUNC8 (view1, &byteOffset, &byteLength);
  FUNC0 (FUNC1 (JERRY_BIN_OP_STRICT_EQUAL, internal_buffer, arraybuffer));
  FUNC0 (byteOffset == 0);
  FUNC0 (byteLength == 16);
  FUNC16 (internal_buffer);

  jerry_value_t view2 = FUNC4 (arraybuffer, 12, 4);
  FUNC0 (!FUNC19 (view1));
  FUNC0 (FUNC18 (view2));
  internal_buffer = FUNC8 (view2, &byteOffset, &byteLength);
  FUNC0 (FUNC1 (JERRY_BIN_OP_STRICT_EQUAL, internal_buffer, arraybuffer));
  FUNC0 (byteOffset == 12);
  FUNC0 (byteLength == 4);
  FUNC16 (internal_buffer);

  /* Test invalid construction */
  jerry_value_t empty_object = FUNC5 ();
  jerry_value_t view3 = FUNC4 (empty_object, 20, 10);
  FUNC0 (FUNC19 (view3));
  jerry_value_t error_obj = FUNC12 (view3, true);
  FUNC0 (FUNC9 (error_obj) == JERRY_ERROR_TYPE);
  FUNC16 (error_obj);
  FUNC16 (empty_object);

  jerry_value_t view4 = FUNC4 (arraybuffer, 20, 10);
  FUNC0 (FUNC19 (view3));
  error_obj = FUNC12 (view4, true);
  FUNC0 (FUNC9 (error_obj) == JERRY_ERROR_RANGE);
  FUNC16 (error_obj);

  /* Test getting/setting values */
  jerry_value_t global_obj = FUNC10 ();
  jerry_value_t view1_str = FUNC6 ((const jerry_char_t *) "view1");
  jerry_value_t view2_str = FUNC6 ((const jerry_char_t *) "view2");
  FUNC0 (FUNC17 (global_obj, view1_str, view1));
  FUNC0 (FUNC17 (global_obj, view2_str, view2));

  FUNC16 (view1_str);
  FUNC16 (view2_str);
  FUNC16 (global_obj);

  const jerry_char_t set_src[] = "view1.setInt16 (12, 255)";
  FUNC0 (FUNC20 (FUNC7 (set_src, sizeof (set_src) - 1, JERRY_PARSE_NO_OPTS)));

  const jerry_char_t get_src[] = "view2.getInt16 (0)";
  FUNC0 (FUNC11 (FUNC7 (get_src, sizeof (get_src) - 1, JERRY_PARSE_NO_OPTS)) == 255);

  const jerry_char_t get_src_little_endian[] = "view2.getInt16 (0, true)";
  FUNC0 (FUNC11 (FUNC7 (get_src_little_endian,
                                                   sizeof (get_src_little_endian) - 1,
                                                   JERRY_PARSE_NO_OPTS)) == -256);

  /* Cleanup */
  FUNC16 (view2);
  FUNC16 (view1);
  FUNC16 (arraybuffer);

  FUNC2 ();

  return 0;
}