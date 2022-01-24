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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LIT_CHAR_0 ; 
 scalar_t__ LIT_CHAR_9 ; 
 scalar_t__ LIT_CHAR_DOLLAR_SIGN ; 
 scalar_t__ LIT_CHAR_LOWERCASE_A ; 
 scalar_t__ LIT_CHAR_LOWERCASE_Z ; 
 scalar_t__ LIT_CHAR_UNDERSCORE ; 
 scalar_t__ LIT_UTF8_1_BYTE_CODE_POINT_MAX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

bool
FUNC3 (uint16_t chr) /**< EcmaScript character */
{
  /* Fast path for ASCII-defined letters. */
  if (chr <= LIT_UTF8_1_BYTE_CODE_POINT_MAX)
  {
    return ((FUNC0 (chr) >= LIT_CHAR_LOWERCASE_A
             && FUNC0 (chr) <= LIT_CHAR_LOWERCASE_Z)
            || (chr >= LIT_CHAR_0 && chr <= LIT_CHAR_9)
            || chr == LIT_CHAR_DOLLAR_SIGN
            || chr == LIT_CHAR_UNDERSCORE);
  }

  return (FUNC1 (chr)
          || FUNC2 (chr));
}