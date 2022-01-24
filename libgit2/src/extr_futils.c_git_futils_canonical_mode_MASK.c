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
typedef  int mode_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int S_IFDIR ; 
 int S_IFGITLINK ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

mode_t FUNC5(mode_t raw_mode)
{
	if (FUNC4(raw_mode))
		return S_IFREG | FUNC0(raw_mode);
	else if (FUNC3(raw_mode))
		return S_IFLNK;
	else if (FUNC2(raw_mode))
		return S_IFGITLINK;
	else if (FUNC1(raw_mode))
		return S_IFDIR;
	else
		return 0;
}