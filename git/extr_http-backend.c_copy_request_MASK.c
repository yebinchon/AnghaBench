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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned char**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*,scalar_t__,char const*) ; 

__attribute__((used)) static void FUNC5(const char *prog_name, int out, ssize_t req_len)
{
	unsigned char *buf;
	ssize_t n = FUNC3(0, &buf, req_len);
	if (n < 0)
		FUNC1("error reading request body");
	FUNC4(out, buf, n, prog_name);
	FUNC0(out);
	FUNC2(buf);
}