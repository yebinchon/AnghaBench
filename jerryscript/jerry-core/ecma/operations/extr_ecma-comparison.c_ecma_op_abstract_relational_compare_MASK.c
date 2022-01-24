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
typedef  int /*<<< orphan*/  ecma_string_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_PREFERRED_TYPE_NUMBER ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nx ; 
 scalar_t__ ny ; 

ecma_value_t
FUNC14 (ecma_value_t x, /**< first operand */
                                     ecma_value_t y, /**< second operand */
                                     bool left_first) /**< 'LeftFirst' flag */
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  /* 1., 2. */
  ecma_value_t prim_first_converted_value = FUNC13 (x, ECMA_PREFERRED_TYPE_NUMBER);
  if (FUNC0 (prim_first_converted_value))
  {
    return prim_first_converted_value;
  }

  ecma_value_t prim_second_converted_value = FUNC13 (y, ECMA_PREFERRED_TYPE_NUMBER);
  if (FUNC0 (prim_second_converted_value))
  {
    FUNC5 (prim_first_converted_value);
    return prim_second_converted_value;
  }

  const ecma_value_t px = left_first ? prim_first_converted_value : prim_second_converted_value;
  const ecma_value_t py = left_first ? prim_second_converted_value : prim_first_converted_value;

  const bool is_px_string = FUNC7 (px);
  const bool is_py_string = FUNC7 (py);

  if (!(is_px_string && is_py_string))
  {
    /* 3. */

    /* a. */
    FUNC2 (nx, px, ret_value);
    FUNC2 (ny, py, ret_value);

    /* b. */
    if (FUNC10 (nx)
        || FUNC10 (ny))
    {
      /* c., d. */
      ret_value = ECMA_VALUE_UNDEFINED;
    }
    else
    {
      bool is_x_less_than_y = (nx < ny);

#ifndef JERRY_NDEBUG
      bool is_x_less_than_y_check;

      if (nx == ny
          || (FUNC12 (nx)
              && FUNC12 (ny)))
      {
        /* e., f., g. */
        is_x_less_than_y_check = false;
      }
      else if (FUNC9 (nx)
               && !FUNC11 (nx))
      {
        /* h. */
        is_x_less_than_y_check = false;
      }
      else if (FUNC9 (ny)
               && !FUNC11 (ny))
      {
        /* i. */
        is_x_less_than_y_check = true;
      }
      else if (FUNC9 (ny)
               && FUNC11 (ny))
      {
        /* j. */
        is_x_less_than_y_check = false;
      }
      else if (FUNC9 (nx)
               && FUNC11 (nx))
      {
        /* k. */
        is_x_less_than_y_check = true;
      }
      else
      {
        /* l. */
        FUNC3 (!FUNC10 (nx)
                      && !FUNC9 (nx));
        FUNC3 (!FUNC10 (ny)
                      && !FUNC9 (ny));
        FUNC3 (!(FUNC12 (nx)
                        && FUNC12 (ny)));

        if (nx < ny)
        {
          is_x_less_than_y_check = true;
        }
        else
        {
          is_x_less_than_y_check = false;
        }
      }

      FUNC3 (is_x_less_than_y_check == is_x_less_than_y);
#endif /* !JERRY_NDEBUG */

      ret_value = FUNC8 (is_x_less_than_y);
    }

    FUNC1 (ny);
    FUNC1 (nx);
  }
  else
  { /* 4. */
    FUNC3 (is_px_string && is_py_string);

    ecma_string_t *str_x_p = FUNC6 (px);
    ecma_string_t *str_y_p = FUNC6 (py);

    bool is_px_less = FUNC4 (str_x_p, str_y_p);

    ret_value = FUNC8 (is_px_less);
  }

  FUNC5 (prim_second_converted_value);
  FUNC5 (prim_first_converted_value);

  return ret_value;
}