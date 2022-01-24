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
struct service_cmd {char const* method; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct strbuf *hdr, const struct service_cmd *c)
{
	const char *proto = FUNC1("SERVER_PROTOCOL");

	if (proto && !FUNC5(proto, "HTTP/1.1")) {
		FUNC4(hdr, 405, "Method Not Allowed");
		FUNC3(hdr, "Allow",
			!FUNC5(c->method, "GET") ? "GET, HEAD" : c->method);
	} else
		FUNC4(hdr, 400, "Bad Request");
	FUNC2(hdr);
	FUNC0(hdr);
	return 0;
}