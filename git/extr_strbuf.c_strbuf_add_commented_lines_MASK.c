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
typedef  int /*<<< orphan*/  prefix2 ;
typedef  int /*<<< orphan*/  prefix1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char*,char const*,size_t) ; 
 char comment_line_char ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char) ; 

void FUNC2(struct strbuf *out, const char *buf, size_t size)
{
	static char prefix1[3];
	static char prefix2[2];

	if (prefix1[0] != comment_line_char) {
		FUNC1(prefix1, sizeof(prefix1), "%c ", comment_line_char);
		FUNC1(prefix2, sizeof(prefix2), "%c", comment_line_char);
	}
	FUNC0(out, prefix1, prefix2, buf, size);
}