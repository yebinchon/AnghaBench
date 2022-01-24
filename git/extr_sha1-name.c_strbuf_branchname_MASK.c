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
 int FUNC0 (char const*,int,struct strbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int FUNC2 (char const*) ; 

void FUNC3(struct strbuf *sb, const char *name, unsigned allowed)
{
	int len = FUNC2(name);
	int used = FUNC0(name, len, sb, allowed);

	if (used < 0)
		used = 0;
	FUNC1(sb, name + used, len - used);
}