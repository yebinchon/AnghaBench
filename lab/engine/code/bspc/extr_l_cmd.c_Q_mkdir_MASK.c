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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4 (char *path)
{
#ifdef WIN32
	if (_mkdir (path) != -1)
		return;
#else
	if (FUNC2 (path, 0777) != -1)
		return;
#endif
	if (errno != EEXIST)
		FUNC0 ("mkdir %s: %s",path, FUNC3(errno));
}