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
typedef  int uint8_t ;
typedef  scalar_t__ lit_code_point_t ;
typedef  scalar_t__ ecma_char_t ;

/* Variables and functions */
 scalar_t__ LIT_UTF16_CODE_UNIT_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

uint8_t
FUNC2 (lit_code_point_t cp, /**< the code point we encode */
                             ecma_char_t *cu_p) /**< result of the encoding */
{
  if (cp <= LIT_UTF16_CODE_UNIT_MAX)
  {
    cu_p[0] = (ecma_char_t) cp;
    return 1;
  }

  cu_p[0] = FUNC0 (cp);
  cu_p[1] = FUNC1 (cp);
  return 2;
}