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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static const char *FUNC3(size_t *len_out, const char *name)
{
	size_t prefix_len;
	const char *dot;

	prefix_len = FUNC2("remote.");
	dot = FUNC1(name + prefix_len, '.');

	FUNC0(dot);

	*len_out = dot - name - prefix_len;
	return name + prefix_len;
}