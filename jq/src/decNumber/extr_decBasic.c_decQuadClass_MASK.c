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
typedef  enum decClass { ____Placeholder_decClass } decClass ;
typedef  int /*<<< orphan*/  decFloat ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 scalar_t__ DECEMIN ; 
 int DEC_CLASS_NEG_INF ; 
 int DEC_CLASS_NEG_NORMAL ; 
 int DEC_CLASS_NEG_SUBNORMAL ; 
 int DEC_CLASS_NEG_ZERO ; 
 int DEC_CLASS_POS_INF ; 
 int DEC_CLASS_POS_NORMAL ; 
 int DEC_CLASS_POS_SUBNORMAL ; 
 int DEC_CLASS_POS_ZERO ; 
 int DEC_CLASS_QNAN ; 
 int DEC_CLASS_SNAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

enum decClass FUNC7(const decFloat *df) {
  Int exp;                         // exponent
  if (FUNC3(df)) {
    if (FUNC0(df)) return DEC_CLASS_QNAN;
    if (FUNC2(df)) return DEC_CLASS_SNAN;
    // must be an infinity
    if (FUNC1(df)) return DEC_CLASS_NEG_INF;
    return DEC_CLASS_POS_INF;
    }
  if (FUNC4(df)) {              // quite common
    if (FUNC1(df)) return DEC_CLASS_NEG_ZERO;
    return DEC_CLASS_POS_ZERO;
    }
  // is finite and non-zero; similar code to decFloatIsNormal, here
  // [this could be speeded up slightly by in-lining decFloatDigits]
  exp=FUNC5(df)                 // get unbiased exponent ..
     +FUNC6(df)-1;        // .. and make adjusted exponent
  if (exp>=DECEMIN) {              // is normal
    if (FUNC1(df)) return DEC_CLASS_NEG_NORMAL;
    return DEC_CLASS_POS_NORMAL;
    }
  // is subnormal
  if (FUNC1(df)) return DEC_CLASS_NEG_SUBNORMAL;
  return DEC_CLASS_POS_SUBNORMAL;
  }