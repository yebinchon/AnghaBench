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
struct spa_data {int /*<<< orphan*/  bdfn; int /*<<< orphan*/  phb_opal_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct spa_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void *platform_data)
{
	struct spa_data *data = (struct spa_data *) platform_data;
	int rc;

	rc = FUNC2(data->phb_opal_id, data->bdfn, 0, 0);
	FUNC0(rc);
	FUNC1(data);
}