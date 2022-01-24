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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC6(struct strbuf *src, struct strbuf *dst)
{
	struct stat st;

	if (FUNC5(src->buf, &st) < 0)
		return -1;
	if (FUNC0(st.st_mode)) {
		if (!FUNC4(dst->buf, 0777)) {
			if (FUNC1(dst->buf))
				return -1;
		} else if (errno != EEXIST)
			return -1;
		return FUNC3(src, dst);
	}
	return FUNC2(src->buf, dst->buf);
}