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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 

const char* FUNC4(jv n) {
  FUNC2(FUNC1(n, JV_KIND_NUMBER));

  if (FUNC0(n, JVP_FLAGS_NUMBER_LITERAL)) {
    return FUNC3(n);
  } else {
    return NULL;
  }
}