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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char* FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *msg)
{
	struct strbuf buf = STRBUF_INIT;
	static char *content_type = "Content-Type: text/html;\n";
	static char *pre_open = "<pre>\n";
	static char *pre_close = "</pre>\n";
	const char *body = FUNC5(msg->buf, "\n\n");

	if (!body)
		return; /* Headers but no body; no wrapping needed */

	body += 2;

	FUNC0(&buf, msg->buf, body - msg->buf - 1);
	FUNC2(&buf, content_type);
	FUNC1(&buf, '\n');
	FUNC2(&buf, pre_open);
	FUNC3(&buf, body);
	FUNC2(&buf, pre_close);

	FUNC4(msg);
	*msg = buf;
}