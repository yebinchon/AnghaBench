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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int out, const unsigned char *buf, ssize_t len, const char *prog_name)
{
	if (FUNC1(out, buf, len) < 0)
		FUNC0("unable to write to '%s'", prog_name);
}