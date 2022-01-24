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
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 

void *FUNC4(size_t nmemb, size_t size)
{
	void *ret;

	if (FUNC3(nmemb, size))
		FUNC1("data too large to fit into virtual memory space");

	FUNC2(size * nmemb, 0);
	ret = FUNC0(nmemb, size);
	if (!ret && (!nmemb || !size))
		ret = FUNC0(1, 1);
	if (!ret)
		FUNC1("Out of memory, calloc failed");
	return ret;
}