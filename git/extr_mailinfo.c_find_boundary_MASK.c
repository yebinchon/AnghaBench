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
struct mailinfo {scalar_t__* content_top; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mailinfo *mi, struct strbuf *line)
{
	while (!FUNC1(line, mi->input)) {
		if (*(mi->content_top) && FUNC0(mi, line))
			return 1;
	}
	return 0;
}