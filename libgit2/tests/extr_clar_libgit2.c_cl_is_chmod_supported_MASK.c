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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool FUNC4(void)
{
	static int _is_supported = -1;

	if (_is_supported < 0) {
		FUNC0("filemode.t", "Test if filemode can be modified");
		_is_supported = FUNC2("filemode.t");
		FUNC1(FUNC3("filemode.t"));
	}

	return _is_supported;
}