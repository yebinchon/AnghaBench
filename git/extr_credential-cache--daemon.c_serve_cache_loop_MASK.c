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
typedef  int timestamp_t ;
struct pollfd {int fd; int events; int revents; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int POLLIN ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int,char*) ; 

__attribute__((used)) static int FUNC10(int fd)
{
	struct pollfd pfd;
	timestamp_t wakeup;

	wakeup = FUNC1();
	if (!wakeup)
		return 0;

	pfd.fd = fd;
	pfd.events = POLLIN;
	if (FUNC6(&pfd, 1, 1000 * wakeup) < 0) {
		if (errno != EINTR)
			FUNC3("poll failed");
		return 1;
	}

	if (pfd.revents & POLLIN) {
		int client, client2;
		FILE *in, *out;

		client = FUNC0(fd, NULL, NULL);
		if (client < 0) {
			FUNC8("accept failed");
			return 1;
		}
		client2 = FUNC4(client);
		if (client2 < 0) {
			FUNC8("dup failed");
			FUNC2(client);
			return 1;
		}

		in = FUNC9(client, "r");
		out = FUNC9(client2, "w");
		FUNC7(in, out);
		FUNC5(in);
		FUNC5(out);
	}
	return 1;
}