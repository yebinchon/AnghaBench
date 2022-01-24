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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  test_ok ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, void *arg)
{
	if (FUNC3(FUNC1(bev)) == 0) {
		if (!test_ok) {
			const char http_request[] = "host\r\n"
				"Connection: close\r\n"
				"\r\n";
			FUNC2(bev, http_request, FUNC4(http_request));
		}
		/* enable reading of the reply */
		FUNC0(bev, EV_READ);
		test_ok++;
	}
}