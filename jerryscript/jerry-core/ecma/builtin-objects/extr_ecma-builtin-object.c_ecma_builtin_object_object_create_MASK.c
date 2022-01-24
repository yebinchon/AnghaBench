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
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ecma_value_t
FUNC12 (ecma_value_t arg1, /**< routine's first argument */
                                   ecma_value_t arg2) /**< routine's second argument */
{
  /* 1. */
  if (!FUNC7 (arg1) && !FUNC6 (arg1))
  {
    return FUNC11 (FUNC0 ("Argument is not an object."));
  }

  ecma_object_t *obj_p = NULL;

  if (!FUNC6 (arg1))
  {
    obj_p = FUNC5 (arg1);
  }
  /* 2-3. */
  ecma_object_t *result_obj_p = FUNC10 (obj_p);

  /* 4. */
  if (!FUNC8 (arg2))
  {
    ecma_value_t obj = FUNC2 (result_obj_p, arg2);

    if (FUNC1 (obj))
    {
      FUNC3 (result_obj_p);
      return obj;
    }

    FUNC4 (obj);
  }

  /* 5. */
  return FUNC9 (result_obj_p);
}