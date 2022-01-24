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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct repository*,int /*<<< orphan*/ ,int,struct strbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC6(struct repository *r,
		       const char *name, int namelen, int len,
		       struct strbuf *buf, unsigned allowed)
{
	/* we have extra data, which might need further processing */
	struct strbuf tmp = STRBUF_INIT;
	int used = buf->len;
	int ret;

	FUNC1(buf, name + len, namelen - len);
	ret = FUNC0(r, buf->buf, buf->len, &tmp, allowed);
	/* that data was not interpreted, remove our cruft */
	if (ret < 0) {
		FUNC5(buf, used);
		return len;
	}
	FUNC4(buf);
	FUNC2(buf, &tmp);
	FUNC3(&tmp);
	/* tweak for size of {-N} versus expanded ref name */
	return ret - used + len;
}