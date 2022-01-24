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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct strbuf *buf)
{
	FILE *mailname;
	struct strbuf mailnamebuf = STRBUF_INIT;

	mailname = FUNC2("/etc/mailname", "r");
	if (!mailname)
		return -1;

	if (FUNC4(&mailnamebuf, mailname) == EOF) {
		if (FUNC1(mailname))
			FUNC6("cannot read /etc/mailname");
		FUNC5(&mailnamebuf);
		FUNC0(mailname);
		return -1;
	}
	/* success! */
	FUNC3(buf, &mailnamebuf);
	FUNC5(&mailnamebuf);
	FUNC0(mailname);
	return 0;
}