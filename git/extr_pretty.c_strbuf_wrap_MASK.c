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
struct strbuf {scalar_t__ buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct strbuf *sb, size_t pos,
			size_t width, size_t indent1, size_t indent2)
{
	struct strbuf tmp = STRBUF_INIT;

	if (pos)
		FUNC0(&tmp, sb->buf, pos);
	FUNC1(&tmp, sb->buf + pos,
				(int) indent1, (int) indent2, (int) width);
	FUNC3(&tmp, sb);
	FUNC2(&tmp);
}