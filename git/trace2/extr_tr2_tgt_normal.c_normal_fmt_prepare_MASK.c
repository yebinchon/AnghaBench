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
struct tr2_tbuf {int /*<<< orphan*/  buf; } ;
struct strbuf {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ TR2FMT_NORMAL_FL_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tr2_tbuf*) ; 
 int /*<<< orphan*/  tr2env_normal_be_brief ; 

__attribute__((used)) static void FUNC5(const char *file, int line, struct strbuf *buf)
{
	FUNC3(buf, 0);

	if (!tr2env_normal_be_brief) {
		struct tr2_tbuf tb_now;

		FUNC4(&tb_now);
		FUNC2(buf, tb_now.buf);
		FUNC0(buf, ' ');

		if (file && *file)
			FUNC1(buf, "%s:%d ", file, line);
		while (buf->len < TR2FMT_NORMAL_FL_WIDTH)
			FUNC0(buf, ' ');
	}
}