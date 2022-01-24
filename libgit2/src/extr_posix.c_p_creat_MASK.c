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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 

int FUNC1(const char *path, mode_t mode)
{
	return FUNC0(path, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY | O_CLOEXEC, mode);
}