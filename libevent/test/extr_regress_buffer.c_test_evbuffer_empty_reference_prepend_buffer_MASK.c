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
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,struct evbuffer*) ; 
 scalar_t__ FUNC5 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(void *ptr)
{
	struct evbuffer *buf1 = NULL, *buf2 = NULL;

	buf1 = FUNC3();
	FUNC8(buf1);
	buf2 = FUNC3();
	FUNC8(buf2);

	/** empty chain could leave invalid last_with_datap */
	FUNC1(buf1, "", 0, NULL, NULL);
	FUNC6(buf1);
	FUNC0(buf2, "foo", 3);
	FUNC6(buf2);
	FUNC4(buf2, buf1);
	FUNC6(buf2);

	FUNC8(!FUNC7((char *)FUNC5(buf2, -1), "foo", 3));
	FUNC6(buf2);

	FUNC8(!FUNC7((char *)FUNC5(buf1, -1), "", 0));
	FUNC6(buf2);

end:
	if (buf1)
		FUNC2(buf1);
	if (buf2)
		FUNC2(buf2);
}