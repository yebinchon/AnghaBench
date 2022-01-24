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
typedef  int /*<<< orphan*/  ecma_standard_error_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  scalar_t__ ecma_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const) ; 

ecma_value_t
FUNC8 (ecma_standard_error_t error_type, /**< native error type */
                                         const ecma_value_t *arguments_list_p, /**< arguments list */
                                         ecma_length_t arguments_list_len) /**< number of arguments */
{
  FUNC0 (arguments_list_len == 0 || arguments_list_p != NULL);

  if (arguments_list_len != 0
      && !FUNC3 (arguments_list_p[0]))
  {
    ecma_string_t *message_string_p = FUNC7 (arguments_list_p[0]);

    if (FUNC1 (message_string_p == NULL))
    {
      return ECMA_VALUE_ERROR;
    }

    ecma_object_t *new_error_object_p = FUNC6 (error_type,
                                                                              message_string_p);

    FUNC2 (message_string_p);
    return FUNC4 (new_error_object_p);
  }
  else
  {
    ecma_object_t *new_error_object_p = FUNC5 (error_type);

    return FUNC4 (new_error_object_p);
  }
}