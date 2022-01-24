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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_typedarray_type_t ;
typedef  scalar_t__ jerry_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (jerry_value_t typedarray, /**< target TypedArray to query */
                      jerry_typedarray_type_t typedarray_type, /**< expected TypedArray type */
                      jerry_length_t element_count, /**< expected element count */
                      jerry_length_t bytes_per_element) /**< bytes per element for the given type */
{
  FUNC0 (!FUNC6 (typedarray));
  FUNC0 (FUNC7 (typedarray));
  FUNC0 (FUNC3 (typedarray) == typedarray_type);
  FUNC0 (FUNC2 (typedarray) == element_count);

  jerry_length_t byte_length = (uint32_t) -1;
  jerry_length_t byte_offset = (uint32_t) -1;
  jerry_value_t arraybuffer = FUNC1 (typedarray, &byte_offset, &byte_length);
  FUNC0 (FUNC5 (arraybuffer));

  FUNC0 (byte_length == element_count * bytes_per_element);
  FUNC0 (byte_offset == 0);

  FUNC4 (arraybuffer);
}