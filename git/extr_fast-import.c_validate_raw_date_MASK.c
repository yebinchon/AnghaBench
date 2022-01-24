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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC2(const char *src, struct strbuf *result)
{
	const char *orig_src = src;
	char *endp;
	unsigned long num;

	errno = 0;

	num = FUNC1(src, &endp, 10);
	/* NEEDSWORK: perhaps check for reasonable values? */
	if (errno || endp == src || *endp != ' ')
		return -1;

	src = endp + 1;
	if (*src != '-' && *src != '+')
		return -1;

	num = FUNC1(src + 1, &endp, 10);
	if (errno || endp == src + 1 || *endp || 1400 < num)
		return -1;

	FUNC0(result, orig_src);
	return 0;
}