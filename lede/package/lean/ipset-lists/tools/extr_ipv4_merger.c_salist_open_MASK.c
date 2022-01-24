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
struct sa_open_data {scalar_t__ errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_open_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct sa_open_data *FUNC3(void)
{
	struct sa_open_data *od = NULL;

	od = (struct sa_open_data *)FUNC1(sizeof(*od));
	if (!od) {
		FUNC0(stderr, "salist: cannot allocate sa_open_data.\n");
		return NULL;
	}
	FUNC2(od, 0, sizeof(*od));
	od->errors = 0;

	return od;
}