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
struct userformat_want {int dummy; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int /*<<< orphan*/ ,struct userformat_want*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 char* user_format ; 
 int /*<<< orphan*/  userformat_want_item ; 

void FUNC2(const char *fmt, struct userformat_want *w)
{
	struct strbuf dummy = STRBUF_INIT;

	if (!fmt) {
		if (!user_format)
			return;
		fmt = user_format;
	}
	FUNC0(&dummy, fmt, userformat_want_item, w);
	FUNC1(&dummy);
}