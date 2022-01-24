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
 int JV_PRINT_COLOR ; 
 int FUNC0 (int) ; 
 int JV_PRINT_INVALID ; 
 int JV_PRINT_PRETTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(jv x, int flags) {
  if (flags == -1)
    flags = JV_PRINT_PRETTY | JV_PRINT_COLOR | FUNC0(2);
  FUNC3(FUNC2(x), stderr, flags | JV_PRINT_INVALID);
  FUNC1(stderr);
}