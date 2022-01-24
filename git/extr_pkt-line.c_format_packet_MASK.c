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
typedef  int /*<<< orphan*/  va_list ;
struct strbuf {size_t len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 size_t LARGE_PACKET_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct strbuf *out, const char *prefix,
			  const char *fmt, va_list args)
{
	size_t orig_len, n;

	orig_len = out->len;
	FUNC4(out, "0000");
	FUNC4(out, prefix);
	FUNC5(out, fmt, args);
	n = out->len - orig_len;

	if (n > LARGE_PACKET_MAX)
		FUNC1(FUNC0("protocol error: impossibly long line"));

	FUNC3(&out->buf[orig_len], n);
	FUNC2(out->buf + orig_len + 4, n - 4, 1);
}