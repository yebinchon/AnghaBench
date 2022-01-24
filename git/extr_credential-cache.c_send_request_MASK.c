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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 scalar_t__ ECONNRESET ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static int FUNC7(const char *socket, const struct strbuf *out)
{
	int got_data = 0;
	int fd = FUNC4(socket);

	if (fd < 0)
		return -1;

	if (FUNC5(fd, out->buf, out->len) < 0)
		FUNC1("unable to write to cache daemon");
	FUNC3(fd, SHUT_WR);

	while (1) {
		char in[1024];
		int r;

		r = FUNC2(fd, in, sizeof(in));
		if (r == 0 || (r < 0 && errno == ECONNRESET))
			break;
		if (r < 0)
			FUNC1("read error from cache daemon");
		FUNC6(1, in, r);
		got_data = 1;
	}
	FUNC0(fd);
	return got_data;
}