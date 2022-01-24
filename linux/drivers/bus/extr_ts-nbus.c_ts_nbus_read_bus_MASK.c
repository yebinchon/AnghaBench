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
typedef  int /*<<< orphan*/  u8 ;
struct ts_nbus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ts_nbus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ts_nbus*) ; 
 int /*<<< orphan*/  FUNC2 (struct ts_nbus*) ; 

__attribute__((used)) static int FUNC3(struct ts_nbus *ts_nbus, u8 *val)
{
	FUNC1(ts_nbus);
	FUNC2(ts_nbus);

	return FUNC0(ts_nbus, val);
}