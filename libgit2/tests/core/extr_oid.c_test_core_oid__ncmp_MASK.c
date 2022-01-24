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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  idp ; 

void FUNC2(void)
{
	FUNC0(!FUNC1(&id, &idp, 0));
	FUNC0(!FUNC1(&id, &idp, 1));
	FUNC0(!FUNC1(&id, &idp, 2));
	FUNC0(!FUNC1(&id, &idp, 17));
	FUNC0(!FUNC1(&id, &idp, 18));
	FUNC0(FUNC1(&id, &idp, 19));
	FUNC0(FUNC1(&id, &idp, 40));
	FUNC0(FUNC1(&id, &idp, 41));
	FUNC0(FUNC1(&id, &idp, 42));

	FUNC0(!FUNC1(&id, &id, 0));
	FUNC0(!FUNC1(&id, &id, 1));
	FUNC0(!FUNC1(&id, &id, 39));
	FUNC0(!FUNC1(&id, &id, 40));
	FUNC0(!FUNC1(&id, &id, 41));
}