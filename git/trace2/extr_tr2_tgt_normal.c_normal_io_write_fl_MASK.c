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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  tr2dst_normal ; 

__attribute__((used)) static void FUNC4(const char *file, int line,
			       const struct strbuf *buf_payload)
{
	struct strbuf buf_line = STRBUF_INIT;

	FUNC0(file, line, &buf_line);
	FUNC1(&buf_line, buf_payload);
	FUNC3(&tr2dst_normal, &buf_line);
	FUNC2(&buf_line);
}