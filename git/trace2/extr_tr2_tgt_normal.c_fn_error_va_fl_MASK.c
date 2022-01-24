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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(const char *file, int line, const char *fmt,
			   va_list ap)
{
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC3(&buf_payload, "error");
	if (fmt && *fmt) {
		FUNC2(&buf_payload, ' ');
		FUNC0(&buf_payload, fmt, ap);
	}
	FUNC1(file, line, &buf_payload);
	FUNC4(&buf_payload);
}