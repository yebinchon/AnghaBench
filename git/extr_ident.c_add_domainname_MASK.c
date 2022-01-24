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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_NAME_MAX ; 
 scalar_t__ FUNC0 (char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(struct strbuf *out, int *is_bogus)
{
	char buf[HOST_NAME_MAX + 1];

	if (FUNC5(buf, sizeof(buf))) {
		FUNC4("cannot get host name");
		FUNC2(out, "(none)");
		*is_bogus = 1;
		return;
	}
	if (FUNC3(buf, '.'))
		FUNC2(out, buf);
	else if (FUNC0(buf, out) < 0) {
		FUNC1(out, "%s.(none)", buf);
		*is_bogus = 1;
	}
}