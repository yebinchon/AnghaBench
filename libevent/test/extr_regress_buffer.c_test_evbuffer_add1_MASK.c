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
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int FUNC4 (struct evbuffer*) ; 
 struct evbuffer* FUNC5 () ; 
 scalar_t__ FUNC6 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(void *ptr)
{
	struct evbuffer *buf;
	char *str;

	buf = FUNC5();
	FUNC0(buf, "1", 1);
	FUNC7(buf);
	FUNC2(buf, 2048);
	FUNC7(buf);
	FUNC0(buf, "2", 1);
	FUNC7(buf);
	FUNC1(buf, "3");
	FUNC7(buf);

	FUNC8(FUNC4(buf) == 3);
	str = (char *)FUNC6(buf, -1);
	FUNC8(str[0] == '1');
	FUNC8(str[1] == '2');
	FUNC8(str[2] == '3');
end:
	FUNC3(buf);
}