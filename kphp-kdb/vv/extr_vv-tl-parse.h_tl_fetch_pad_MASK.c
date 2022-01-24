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

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_SYNTAX ; 
 int TL_IN_POS ; 
 int TL_IN_REMAINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4 (void) {
  if (FUNC1 (0) < 0) {
    return -1;
  }
  int t = 0;
  int pad = (-TL_IN_POS) & 3;
  FUNC0 (TL_IN_REMAINING >= pad);
  FUNC2 (&t, pad);
  if (t) {
    FUNC3 ("Padding with non-zeroes", TL_ERROR_SYNTAX);
    return -1;
  }
  return pad;  
}