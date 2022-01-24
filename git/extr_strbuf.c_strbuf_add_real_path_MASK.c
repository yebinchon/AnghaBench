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
struct strbuf {scalar_t__ len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

void FUNC3(struct strbuf *sb, const char *path)
{
	if (sb->len) {
		struct strbuf resolved = STRBUF_INIT;
		FUNC1(&resolved, path, 1);
		FUNC0(sb, &resolved);
		FUNC2(&resolved);
	} else
		FUNC1(sb, path, 1);
}