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
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,char*,int) ; 
 scalar_t__ FUNC4 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(void *ptr)
{
	struct evbuffer *buf = NULL;

	buf = FUNC2();
	FUNC7(buf);

	/** empty chain could leave invalid last_with_datap */
	FUNC0(buf, "", 0, NULL, NULL);
	FUNC5(buf);
	FUNC3(buf, "foo", 3);

	FUNC5(buf);
	FUNC7(!FUNC6((char *)FUNC4(buf, -1), "foo", 3));
	FUNC5(buf);

end:
	if (buf)
		FUNC1(buf);
}