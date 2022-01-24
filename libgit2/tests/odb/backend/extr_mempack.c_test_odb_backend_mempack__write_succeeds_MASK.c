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
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  _obj ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  _oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

void FUNC4(void)
{
	const char *data = "data";
	FUNC0(FUNC2(&_oid, _odb, data, FUNC3(data) + 1, GIT_OBJECT_BLOB));
	FUNC0(FUNC1(&_obj, _odb, &_oid));
}