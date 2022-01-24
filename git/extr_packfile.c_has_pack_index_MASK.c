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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC2(const unsigned char *sha1)
{
	struct stat st;
	if (FUNC1(FUNC0(sha1), &st))
		return 0;
	return 1;
}