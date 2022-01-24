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
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ ENOENT ; 
 int FLAG_RELAY ; 
 int FLAG_SPAWN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,...) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const char *socket, const char *action, int timeout,
		     int flags)
{
	struct strbuf buf = STRBUF_INIT;

	FUNC3(&buf, "action=%s\n", action);
	FUNC3(&buf, "timeout=%d\n", timeout);
	if (flags & FLAG_RELAY) {
		if (FUNC4(&buf, 0, 0) < 0)
			FUNC0("unable to relay credential");
	}

	if (FUNC1(socket, &buf) < 0) {
		if (errno != ENOENT && errno != ECONNREFUSED)
			FUNC0("unable to connect to cache daemon");
		if (flags & FLAG_SPAWN) {
			FUNC2(socket);
			if (FUNC1(socket, &buf) < 0)
				FUNC0("unable to connect to cache daemon");
		}
	}
	FUNC5(&buf);
}