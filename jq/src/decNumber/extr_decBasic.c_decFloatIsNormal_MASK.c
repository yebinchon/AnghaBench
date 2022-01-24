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
typedef  int uInt ;
typedef  int /*<<< orphan*/  decFloat ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 scalar_t__ DECEMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

uInt FUNC4(const decFloat *df) {
  Int exp;                         // exponent
  if (FUNC0(df)) return 0;
  if (FUNC1(df)) return 0;
  // is finite and non-zero
  exp=FUNC2(df)                 // get unbiased exponent ..
     +FUNC3(df)-1;        // .. and make adjusted exponent
  return (exp>=DECEMIN);           // < DECEMIN is subnormal
  }