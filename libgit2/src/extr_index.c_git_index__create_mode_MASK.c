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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int S_IFDIR ; 
 unsigned int S_IFLNK ; 
 unsigned int S_IFMT ; 
 unsigned int S_IFREG ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 

unsigned int FUNC3(unsigned int mode)
{
	if (FUNC2(mode))
		return S_IFLNK;

	if (FUNC1(mode) || (mode & S_IFMT) == (S_IFLNK | S_IFDIR))
		return (S_IFLNK | S_IFDIR);

	return S_IFREG | FUNC0(mode);
}