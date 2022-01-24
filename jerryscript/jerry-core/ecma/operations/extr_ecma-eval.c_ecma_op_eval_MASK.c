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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ lit_utf8_size_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  code_utf8_buffer_p ; 
 int /*<<< orphan*/  code_utf8_buffer_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC4 (ecma_string_t *code_p, /**< code string */
              uint32_t parse_opts) /**< ecma_parse_opts_t option bits */
{
  ecma_value_t ret_value;

  lit_utf8_size_t chars_num = FUNC3 (code_p);
  if (chars_num == 0)
  {
    ret_value = ECMA_VALUE_UNDEFINED;
  }
  else
  {
    FUNC1 (code_p, code_utf8_buffer_p, code_utf8_buffer_size);

    ret_value = FUNC2 (code_utf8_buffer_p,
                                           chars_num,
                                           parse_opts);

    FUNC0 (code_utf8_buffer_p, code_utf8_buffer_size);
  }

  return ret_value;
}