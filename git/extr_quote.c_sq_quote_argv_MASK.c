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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int) ; 

void FUNC3(struct strbuf *dst, const char **argv)
{
	int i;

	/* Copy into destination buffer. */
	FUNC2(dst, 255);
	for (i = 0; argv[i]; ++i) {
		FUNC1(dst, ' ');
		FUNC0(dst, argv[i]);
	}
}