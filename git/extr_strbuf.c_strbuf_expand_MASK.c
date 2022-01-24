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
typedef  size_t (* expand_fn_t ) (struct strbuf*,char const*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 char* FUNC2 (char const*,char) ; 

void FUNC3(struct strbuf *sb, const char *format, expand_fn_t fn,
		   void *context)
{
	for (;;) {
		const char *percent;
		size_t consumed;

		percent = FUNC2(format, '%');
		FUNC0(sb, format, percent - format);
		if (!*percent)
			break;
		format = percent + 1;

		if (*format == '%') {
			FUNC1(sb, '%');
			format++;
			continue;
		}

		consumed = fn(sb, format, context);
		if (consumed)
			format += consumed;
		else
			FUNC1(sb, '%');
	}
}