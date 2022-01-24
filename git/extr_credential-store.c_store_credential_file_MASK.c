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
struct credential {int /*<<< orphan*/  path; int /*<<< orphan*/  host; int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  is_rfc3986_reserved_or_unreserved ; 
 int /*<<< orphan*/  is_rfc3986_unreserved ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct credential*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(const char *fn, struct credential *c)
{
	struct strbuf buf = STRBUF_INIT;

	FUNC2(&buf, "%s://", c->protocol);
	FUNC3(&buf, c->username, is_rfc3986_unreserved);
	FUNC1(&buf, ':');
	FUNC3(&buf, c->password, is_rfc3986_unreserved);
	FUNC1(&buf, '@');
	if (c->host)
		FUNC3(&buf, c->host, is_rfc3986_unreserved);
	if (c->path) {
		FUNC1(&buf, '/');
		FUNC3(&buf, c->path,
					is_rfc3986_reserved_or_unreserved);
	}

	FUNC0(fn, c, &buf);
	FUNC4(&buf);
}