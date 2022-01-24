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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 

int FUNC3(struct strbuf *sb, int fd, int term)
{
	FUNC1(sb);

	while (1) {
		char ch;
		ssize_t len = FUNC2(fd, &ch, 1);
		if (len <= 0)
			return EOF;
		FUNC0(sb, ch);
		if (ch == term)
			break;
	}
	return 0;
}