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
typedef  int ecma_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_COMMA_CHAR ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING__EMPTY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static ecma_value_t
FUNC8 (const ecma_value_t *arguments_list_p, /**< arguments list */
                                                     ecma_length_t arguments_list_len) /**< number of arguments */
{
  FUNC0 (arguments_list_len == 0 || arguments_list_p != NULL);

  if (arguments_list_len <= 1)
  {
    return FUNC5 (LIT_MAGIC_STRING__EMPTY);
  }

  ecma_string_t *final_str_p = FUNC7 (arguments_list_p[0]);

  if (FUNC1 (final_str_p == NULL))
  {
    return ECMA_VALUE_ERROR;
  }

  if (arguments_list_len == 2)
  {
    return FUNC6 (final_str_p);
  }

  for (ecma_length_t idx = 1; idx < arguments_list_len - 1; idx++)
  {
    ecma_string_t *new_str_p = FUNC7 (arguments_list_p[idx]);

    if (FUNC1 (new_str_p == NULL))
    {
      FUNC4 (final_str_p);
      return ECMA_VALUE_ERROR;
    }

    final_str_p = FUNC2 (final_str_p,
                                                      LIT_MAGIC_STRING_COMMA_CHAR);

    final_str_p = FUNC3 (final_str_p, new_str_p);
    FUNC4 (new_str_p);
  }

  return FUNC6 (final_str_p);
}