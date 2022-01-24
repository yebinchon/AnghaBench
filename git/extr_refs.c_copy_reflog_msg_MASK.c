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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

void FUNC3(struct strbuf *sb, const char *msg)
{
	char c;
	int wasspace = 1;

	FUNC1(sb, '\t');
	while ((c = *msg++)) {
		if (wasspace && FUNC0(c))
			continue;
		wasspace = FUNC0(c);
		if (wasspace)
			c = ' ';
		FUNC1(sb, c);
	}
	FUNC2(sb);
}