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
typedef  int /*<<< orphan*/  u64 ;
struct vas_window {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAS_WINCTL_OPEN ; 
 int /*<<< orphan*/  VAS_WINCTL_PIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINCTL ; 
 int /*<<< orphan*/  FUNC2 (struct vas_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_window*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vas_window *window)
{
	u64 val;

	val = FUNC2(window, FUNC1(WINCTL));
	val = FUNC0(VAS_WINCTL_PIN, val, 0);
	val = FUNC0(VAS_WINCTL_OPEN, val, 0);
	FUNC3(window, FUNC1(WINCTL), val);
}