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
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char const*,struct strbuf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC4(const char *one, const char *two)
{
	int need_one = FUNC0(one, NULL, NULL, 1);
	int need_two = FUNC0(two, NULL, NULL, 1);
	struct strbuf res = STRBUF_INIT;

	if (need_one + need_two) {
		FUNC1(&res, '"');
		FUNC0(one, &res, NULL, 1);
		FUNC0(two, &res, NULL, 1);
		FUNC1(&res, '"');
	} else {
		FUNC2(&res, one);
		FUNC2(&res, two);
	}
	return FUNC3(&res, NULL);
}