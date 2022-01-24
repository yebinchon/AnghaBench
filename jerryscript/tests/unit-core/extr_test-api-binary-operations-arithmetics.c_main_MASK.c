#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tests ;
typedef  int /*<<< orphan*/  test_nans ;
struct TYPE_8__ {int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; int /*<<< orphan*/  op; } ;
typedef  TYPE_1__ test_nan_entry_t ;
typedef  TYPE_1__ test_error_entry_t ;
struct TYPE_9__ {int /*<<< orphan*/  op; int /*<<< orphan*/  expected; int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; } ;
typedef  TYPE_3__ test_entry_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  int /*<<< orphan*/  error_tests ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_BIN_OP_ADD ; 
 int /*<<< orphan*/  JERRY_BIN_OP_DIV ; 
 int /*<<< orphan*/  JERRY_BIN_OP_MUL ; 
 int /*<<< orphan*/  JERRY_BIN_OP_REM ; 
 int /*<<< orphan*/  JERRY_BIN_OP_STRICT_EQUAL ; 
 int /*<<< orphan*/  JERRY_BIN_OP_SUB ; 
 int /*<<< orphan*/  JERRY_ERROR_SYNTAX ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (double) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 double FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 

int
FUNC24 (void)
{
  FUNC2 ();

  FUNC19 (JERRY_INIT_EMPTY);

  jerry_value_t obj1 = FUNC16 ((const jerry_char_t *) "o={x:1};o", 9, JERRY_PARSE_NO_OPTS);
  jerry_value_t obj2 = FUNC16 ((const jerry_char_t *) "o={x:1};o", 9, JERRY_PARSE_NO_OPTS);
  jerry_value_t err1 = FUNC10 (JERRY_ERROR_SYNTAX, (const jerry_char_t *) "error");

  test_nan_entry_t test_nans[] =
  {
    /* Testing addition (+) */
    FUNC5 (JERRY_BIN_OP_ADD, FUNC12 (3.1), FUNC15 ()),
    FUNC5 (JERRY_BIN_OP_ADD, FUNC15 (), FUNC15 ()),
    FUNC5 (JERRY_BIN_OP_ADD, FUNC15 (), FUNC11 ()),

    /* Testing subtraction (-), multiplication (*), division (/), remainder (%) */
    FUNC3 (FUNC12 (3.1), FUNC15 ()),
    FUNC3 (FUNC14 ((const jerry_char_t *) "foo"), FUNC14 ((const jerry_char_t *) "bar")),
    FUNC3 (FUNC14 ((const jerry_char_t *) "foo"), FUNC15 ()),
    FUNC3 (FUNC14 ((const jerry_char_t *) "foo"), FUNC11 ()),
    FUNC3 (FUNC14 ((const jerry_char_t *) "foo"), FUNC12 (5.0)),
    FUNC3 (FUNC15 (), FUNC14 ((const jerry_char_t *) "foo")),
    FUNC3 (FUNC11 (), FUNC14 ((const jerry_char_t *) "foo")),
    FUNC3 (FUNC12 (5.0), FUNC14 ((const jerry_char_t *) "foo")),
    FUNC3 (FUNC15 (), FUNC15 ()),
    FUNC3 (FUNC15 (), FUNC11 ()),
    FUNC3 (FUNC11 (), FUNC15 ()),
    FUNC3 (FUNC6 (obj1), FUNC6 (obj1)),
    FUNC3 (FUNC6 (obj1), FUNC6 (obj2)),
    FUNC3 (FUNC6 (obj2), FUNC6 (obj1)),
    FUNC3 (FUNC6 (obj2), FUNC15 ()),
    FUNC3 (FUNC6 (obj1), FUNC14 ((const jerry_char_t *) "foo")),
    FUNC3 (FUNC6 (obj1), FUNC11 ()),
    FUNC3 (FUNC6 (obj1), FUNC9 (true)),
    FUNC3 (FUNC6 (obj1), FUNC9 (false)),
    FUNC3 (FUNC6 (obj1), FUNC12 (5.0)),

    /* Testing division (/) */
    FUNC5 (JERRY_BIN_OP_DIV, FUNC9 (false), FUNC9 (false)),
    FUNC5 (JERRY_BIN_OP_DIV, FUNC12 (0.0), FUNC12 (0.0)),
    FUNC5 (JERRY_BIN_OP_DIV, FUNC11 (), FUNC11 ()),

    /* Testing remainder (%) */
    FUNC5 (JERRY_BIN_OP_REM, FUNC9 (true), FUNC9 (false)),
    FUNC5 (JERRY_BIN_OP_REM, FUNC9 (false), FUNC9 (false)),
    FUNC5 (JERRY_BIN_OP_REM, FUNC12 (0.0), FUNC12 (0.0)),
    FUNC5 (JERRY_BIN_OP_REM, FUNC11 (), FUNC11 ()),
  };

  for (uint32_t idx = 0; idx < sizeof (test_nans) / sizeof (test_nan_entry_t); idx++)
  {
    jerry_value_t result = FUNC7 (test_nans[idx].op, test_nans[idx].lhs, test_nans[idx].rhs);
    FUNC1 (FUNC23 (result));

    double num = FUNC18 (result);

    FUNC1 (num != num);

    FUNC20 (test_nans[idx].lhs);
    FUNC20 (test_nans[idx].rhs);
    FUNC20 (result);
  }

  test_entry_t tests[] =
  {
    /* Testing addition (+) */
    FUNC0 (JERRY_BIN_OP_ADD, FUNC12 (5.0), FUNC12 (5.0), FUNC12 (10.0)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC12 (3.1), FUNC12 (10), FUNC12 (13.1)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC12 (3.1), FUNC9 (true), FUNC12 (4.1)),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC14 ((const jerry_char_t *) "foo"),
       FUNC14 ((const jerry_char_t *) "bar"),
       FUNC14 ((const jerry_char_t *) "foobar")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC14 ((const jerry_char_t *) "foo"),
       FUNC15 (),
       FUNC14 ((const jerry_char_t *) "fooundefined")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC14 ((const jerry_char_t *) "foo"),
       FUNC11 (),
       FUNC14 ((const jerry_char_t *) "foonull")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC14 ((const jerry_char_t *) "foo"),
       FUNC12 (5.0),
       FUNC14 ((const jerry_char_t *) "foo5")),

    FUNC0 (JERRY_BIN_OP_ADD, FUNC11 (), FUNC11 (), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC9 (true), FUNC9 (true), FUNC12 (2.0)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC9 (true), FUNC9 (false), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC9 (false), FUNC9 (true), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_ADD, FUNC9 (false), FUNC9 (false), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC6 (obj1),
       FUNC14 ((const jerry_char_t *) "[object Object][object Object]")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC6 (obj2),
       FUNC14 ((const jerry_char_t *) "[object Object][object Object]")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj2),
       FUNC6 (obj1),
       FUNC14 ((const jerry_char_t *) "[object Object][object Object]")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC11 (),
       FUNC14 ((const jerry_char_t *) "[object Object]null")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC15 (),
       FUNC14 ((const jerry_char_t *) "[object Object]undefined")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC9 (true),
       FUNC14 ((const jerry_char_t *) "[object Object]true")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC9 (false),
       FUNC14 ((const jerry_char_t *) "[object Object]false")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC12 (5.0),
       FUNC14 ((const jerry_char_t *) "[object Object]5")),
    FUNC0 (JERRY_BIN_OP_ADD,
       FUNC6 (obj1),
       FUNC14 ((const jerry_char_t *) "foo"),
       FUNC14 ((const jerry_char_t *) "[object Object]foo")),

    /* Testing subtraction (-) */
    FUNC0 (JERRY_BIN_OP_SUB, FUNC12 (5.0), FUNC12 (5.0), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC12 (3.1), FUNC12 (10), FUNC12 (-6.9)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC12 (3.1), FUNC9 (true), FUNC12 (2.1)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC9 (true), FUNC9 (true), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC9 (true), FUNC9 (false), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC9 (false), FUNC9 (true), FUNC12 (-1.0)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC9 (false), FUNC9 (false), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_SUB, FUNC11 (), FUNC11 (), FUNC12 (-0.0)),


    /* Testing multiplication (*) */
    FUNC0 (JERRY_BIN_OP_MUL, FUNC12 (5.0), FUNC12 (5.0), FUNC12 (25.0)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC12 (3.1), FUNC12 (10), FUNC12 (31)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC12 (3.1), FUNC9 (true), FUNC12 (3.1)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC9 (true), FUNC9 (true), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC9 (true), FUNC9 (false), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC9 (false), FUNC9 (true), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC9 (false), FUNC9 (false), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_MUL, FUNC11 (), FUNC11 (), FUNC12 (0.0)),

    /* Testing division (/) */
    FUNC0 (JERRY_BIN_OP_DIV, FUNC12 (5.0), FUNC12 (5.0), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_DIV, FUNC12 (3.1), FUNC12 (10), FUNC12 (0.31)),
    FUNC0 (JERRY_BIN_OP_DIV, FUNC12 (3.1), FUNC9 (true), FUNC12 (3.1)),
    FUNC0 (JERRY_BIN_OP_DIV, FUNC9 (true), FUNC9 (true), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_DIV,
       FUNC9 (true),
       FUNC9 (false),
       FUNC13 (false)),
    FUNC0 (JERRY_BIN_OP_DIV, FUNC9 (false), FUNC9 (true), FUNC12 (0.0)),

    /* Testing remainder (%) */
    FUNC0 (JERRY_BIN_OP_REM, FUNC12 (5.0), FUNC12 (5.0), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_REM, FUNC12 (5.0), FUNC12 (2.0), FUNC12 (1.0)),
    FUNC0 (JERRY_BIN_OP_REM, FUNC12 (3.1), FUNC12 (10), FUNC12 (3.1)),
    FUNC0 (JERRY_BIN_OP_REM,
       FUNC12 (3.1),
       FUNC9 (true),
       FUNC12 (0.10000000000000009)),
    FUNC0 (JERRY_BIN_OP_REM, FUNC9 (true), FUNC9 (true), FUNC12 (0.0)),
    FUNC0 (JERRY_BIN_OP_REM, FUNC9 (false), FUNC9 (true), FUNC12 (0.0)),

  };

  for (uint32_t idx = 0; idx < sizeof (tests) / sizeof (test_entry_t); idx++)
  {
    jerry_value_t result = FUNC7 (tests[idx].op, tests[idx].lhs, tests[idx].rhs);
    FUNC1 (!FUNC22 (result));

    jerry_value_t equals = FUNC7 (JERRY_BIN_OP_STRICT_EQUAL, result, tests[idx].expected);
    FUNC1 (FUNC21 (equals) && FUNC17 (equals));
    FUNC20 (equals);

    FUNC20 (tests[idx].lhs);
    FUNC20 (tests[idx].rhs);
    FUNC20 (tests[idx].expected);
    FUNC20 (result);
  }

  jerry_value_t obj3 = FUNC16 ((const jerry_char_t *) "o={valueOf:function(){throw 5}};o", 33, JERRY_PARSE_NO_OPTS);

  test_error_entry_t error_tests[] =
  {
    /* Testing addition (+) */
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (err1), FUNC6 (err1)),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (err1), FUNC15 ()),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC15 (), FUNC6 (err1)),

    /* Testing subtraction (-), multiplication (*), division (/), remainder (%) */
    FUNC3 (FUNC6 (err1), FUNC6 (err1)),
    FUNC3 (FUNC6 (err1), FUNC15 ()),
    FUNC3 (FUNC15 (), FUNC6 (err1)),

    /* Testing addition (+) */
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC15 ()),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC11 ()),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC9 (true)),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC9 (false)),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC6 (obj2)),
    FUNC4 (JERRY_BIN_OP_ADD, FUNC6 (obj3), FUNC14 ((const jerry_char_t *) "foo")),

    /* Testing subtraction (-), multiplication (*), division (/), remainder (%) */
    FUNC3 (FUNC6 (obj3), FUNC15 ()),
    FUNC3 (FUNC6 (obj3), FUNC11 ()),
    FUNC3 (FUNC6 (obj3), FUNC9 (true)),
    FUNC3 (FUNC6 (obj3), FUNC9 (false)),
    FUNC3 (FUNC6 (obj3), FUNC6 (obj2)),
    FUNC3 (FUNC6 (obj3), FUNC14 ((const jerry_char_t *) "foo")),
  };

  for (uint32_t idx = 0; idx < sizeof (error_tests) / sizeof (test_error_entry_t); idx++)
  {
    jerry_value_t result = FUNC7 (tests[idx].op, error_tests[idx].lhs, error_tests[idx].rhs);
    FUNC1 (FUNC22 (result));
    FUNC20 (error_tests[idx].lhs);
    FUNC20 (error_tests[idx].rhs);
    FUNC20 (result);
  }

  FUNC20 (obj1);
  FUNC20 (obj2);
  FUNC20 (obj3);
  FUNC20 (err1);

  FUNC8 ();

  return 0;
}