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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
#define  IS_DOUBLE 130 
#define  IS_LONG 129 
#define  IS_STRING 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 long long FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 long long FUNC5 (int /*<<< orphan*/ ) ; 

long long FUNC6 (zval **z) { /* {{{ */
  switch (FUNC3 (z)) {
  case IS_LONG:
    return FUNC1 (z);
  case IS_DOUBLE:
    return (long long)FUNC0 (z);
  case IS_STRING:
    return FUNC5 (FUNC2 (z));
  default:
    FUNC4 (z);
    return FUNC1 (z);
  }
}