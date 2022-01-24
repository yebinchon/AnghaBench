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
typedef  scalar_t__ ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

bool
FUNC18 (ecma_value_t value) /**< ecma value */
{
  FUNC2 (value);

  if (FUNC10 (value))
  {
    FUNC1 (FUNC5 (value)
                  || FUNC13 (value)
                  || FUNC8 (value));

    return FUNC12 (value);
  }

  if (FUNC7 (value))
  {
    return (value != FUNC14 (0));
  }

  if (FUNC6 (value))
  {
    ecma_number_t num = FUNC3 (value);

    return (!FUNC15 (num) && !FUNC16 (num));
  }

  if (FUNC11 (value))
  {
    ecma_string_t *str_p = FUNC4 (value);

    return !FUNC17 (str_p);
  }

  FUNC1 (FUNC9 (value) || FUNC0 (value));

  return true;
}