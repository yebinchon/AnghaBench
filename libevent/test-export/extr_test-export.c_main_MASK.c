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
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

int
FUNC4(int argc, char const *argv[])
{
	int r = 0;
#ifdef _WIN32
	{
		WSADATA wsaData;
		WSAStartup(MAKEWORD(2, 2), &wsaData);
	}
#endif
	r = FUNC3();
#ifdef _WIN32
	WSACleanup();
#endif
	return r;
}