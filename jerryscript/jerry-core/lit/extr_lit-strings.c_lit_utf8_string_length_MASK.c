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
typedef  scalar_t__ lit_utf8_size_t ;
typedef  int /*<<< orphan*/  lit_utf8_byte_t ;
typedef  scalar_t__ ecma_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 

ecma_length_t
FUNC2 (const lit_utf8_byte_t *utf8_buf_p, /**< utf-8 string */
                        lit_utf8_size_t utf8_buf_size) /**< string size */
{
  ecma_length_t length = 0;
  lit_utf8_size_t size = 0;

  while (size < utf8_buf_size)
  {
    size += FUNC1 (*(utf8_buf_p + size));
    length++;
  }

  FUNC0 (size == utf8_buf_size);

  return length;
}