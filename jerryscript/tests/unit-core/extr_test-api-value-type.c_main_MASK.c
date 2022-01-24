#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test_eval_function ;
struct TYPE_3__ {scalar_t__ type_info; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ test_entry_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_type_t ;
typedef  char const jerry_char_t ;
typedef  int /*<<< orphan*/  entries ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  JERRY_FEATURE_SYMBOL ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  JERRY_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  JERRY_TYPE_ERROR ; 
 int /*<<< orphan*/  JERRY_TYPE_FUNCTION ; 
 scalar_t__ JERRY_TYPE_NONE ; 
 int /*<<< orphan*/  JERRY_TYPE_NULL ; 
 int /*<<< orphan*/  JERRY_TYPE_NUMBER ; 
 int /*<<< orphan*/  JERRY_TYPE_OBJECT ; 
 int /*<<< orphan*/  JERRY_TYPE_STRING ; 
 scalar_t__ JERRY_TYPE_SYMBOL ; 
 int /*<<< orphan*/  JERRY_TYPE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_ext_function ; 

int
FUNC21 (void)
{
  FUNC2 ();

  FUNC17 (JERRY_INIT_EMPTY);

  const jerry_char_t test_eval_function[] = "function demo(a) { return a + 1; }; demo";

  test_entry_t entries[] =
  {
    FUNC0 (JERRY_TYPE_NUMBER, FUNC9 (-33.0)),
    FUNC0 (JERRY_TYPE_NUMBER, FUNC9 (3)),
    FUNC0 (JERRY_TYPE_NUMBER, FUNC11 ()),
    FUNC0 (JERRY_TYPE_NUMBER, FUNC10 (false)),
    FUNC0 (JERRY_TYPE_NUMBER, FUNC10 (true)),

    FUNC0 (JERRY_TYPE_BOOLEAN, FUNC5 (true)),
    FUNC0 (JERRY_TYPE_BOOLEAN, FUNC5 (false)),

    FUNC0 (JERRY_TYPE_UNDEFINED, FUNC15 ()),

    FUNC0 (JERRY_TYPE_OBJECT, FUNC12 ()),
    FUNC0 (JERRY_TYPE_OBJECT, FUNC4 (10)),
    FUNC0 (JERRY_TYPE_ERROR, FUNC6 (JERRY_ERROR_TYPE, (const jerry_char_t *) "error")),

    FUNC0 (JERRY_TYPE_NULL, FUNC8 ()),

    FUNC0 (JERRY_TYPE_FUNCTION, FUNC16 (test_eval_function,
                                            sizeof (test_eval_function) - 1,
                                            JERRY_PARSE_NO_OPTS)),
    FUNC0 (JERRY_TYPE_FUNCTION, FUNC7 (test_ext_function)),

    FUNC0 (JERRY_TYPE_STRING, FUNC13 (test_eval_function)),
    FUNC0 (JERRY_TYPE_STRING, FUNC13 ((jerry_char_t *) "")),
  };

  for (size_t idx = 0; idx < sizeof (entries) / sizeof (entries[0]); idx++)
  {
    jerry_type_t type_info = FUNC20 (entries[idx].value);

    FUNC1 (type_info != JERRY_TYPE_NONE);
    FUNC1 (type_info == entries[idx].type_info);

    FUNC19 (entries[idx].value);
  }

  if (FUNC18 (JERRY_FEATURE_SYMBOL))
  {
    jerry_value_t symbol_desc_value = FUNC13 ((jerry_char_t *) "foo");
    jerry_value_t symbol_value = FUNC14 (symbol_desc_value);
    jerry_type_t type_info = FUNC20 (symbol_value);

    FUNC1 (type_info != JERRY_TYPE_NONE);
    FUNC1 (type_info == JERRY_TYPE_SYMBOL);

    FUNC19 (symbol_value);
    FUNC19 (symbol_desc_value);
  }

  FUNC3 ();

  return 0;
}