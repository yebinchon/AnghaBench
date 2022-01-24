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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct strbuf *src)
{
	struct strbuf dst = STRBUF_INIT;

	FUNC1(&dst, src->len);
	if (FUNC0(dst.buf, src->buf) < 0) {
		FUNC2(&dst);
		return -1;
	}

	/*
	 * normalize_path does not tell us the new length, so we have to
	 * compute it by looking for the new NUL it placed
	 */
	FUNC3(&dst, FUNC5(dst.buf));
	FUNC4(src, &dst);
	FUNC2(&dst);
	return 0;
}