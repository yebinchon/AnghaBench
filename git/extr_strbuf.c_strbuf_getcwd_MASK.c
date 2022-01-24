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
struct strbuf {size_t alloc; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ERANGE ; 
 size_t PATH_MAX ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct strbuf *sb)
{
	size_t oldalloc = sb->alloc;
	size_t guessed_len = 128;

	for (;; guessed_len *= 2) {
		FUNC1(sb, guessed_len);
		if (FUNC0(sb->buf, sb->alloc)) {
			FUNC4(sb, FUNC5(sb->buf));
			return 0;
		}

		/*
		 * If getcwd(3) is implemented as a syscall that falls
		 * back to a regular lookup using readdir(3) etc. then
		 * we may be able to avoid EACCES by providing enough
		 * space to the syscall as it's not necessarily bound
		 * to the same restrictions as the fallback.
		 */
		if (errno == EACCES && guessed_len < PATH_MAX)
			continue;

		if (errno != ERANGE)
			break;
	}
	if (oldalloc == 0)
		FUNC2(sb);
	else
		FUNC3(sb);
	return -1;
}