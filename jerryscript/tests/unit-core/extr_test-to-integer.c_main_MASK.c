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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int ecma_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (double) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_value ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16 (void)
{
  FUNC4 ();

  FUNC15 ();
  FUNC7 ();

  ecma_number_t num;

  ecma_value_t int_num = FUNC8 (123);

  ecma_number_t result = FUNC12 (int_num, &num);

  FUNC6 (int_num);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == 123);

  /* 2 */
  ecma_value_t error = FUNC13 (FUNC0 ("I am a neat little error message"));

  result = FUNC12 (error, &num);

  FUNC6 (FUNC2 (error_value));

  FUNC3 (FUNC1 (result));

  /* 3 */
  ecma_value_t nan = FUNC9 ();

  result = FUNC12 (nan, &num);

  FUNC6 (nan);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == 0);

  /* 4 */
    /* -0 */
  ecma_value_t negative_zero = FUNC10 (-0.0f);

  result = FUNC12 (negative_zero, &num);

  FUNC6 (negative_zero);

  FUNC3 (!FUNC1 (result));
  FUNC3 (1.0f / num == FUNC11 (true));

    /* +0 */
  ecma_value_t positive_zero = FUNC10 (+0.0f);

  result = FUNC12 (positive_zero, &num);

  FUNC6 (positive_zero);

  FUNC3 (!FUNC1 (result));
  FUNC3 (1.0f / num == FUNC11 (false));

    /* -infinity */
  ecma_value_t negative_infinity = FUNC10 (FUNC11 (true));

  result = FUNC12 (negative_infinity, &num);

  FUNC6 (negative_infinity);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == FUNC11 (true));

    /* +infinity */
  ecma_value_t positive_infinity = FUNC10 (FUNC11 (false));

  result = FUNC12 (positive_infinity, &num);

  FUNC6 (positive_infinity);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == FUNC11 (false));

  /* 5 */
  ecma_value_t floor = FUNC10 (3.001f);

  result = FUNC12 (floor, &num);

  FUNC6 (floor);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == 3);

  ecma_value_t floor2 = FUNC10 (-26.5973);

  result = FUNC12 (floor2, &num);

  FUNC6 (floor2);

  FUNC3 (!FUNC1 (result));
  FUNC3 (num == -26);

  FUNC5 ();
  FUNC14 ();

  return 0;
}