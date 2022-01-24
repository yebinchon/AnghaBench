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
#define  QUOTE_NONE 132 
#define  QUOTE_PERL 131 
#define  QUOTE_PYTHON 130 
#define  QUOTE_SHELL 129 
#define  QUOTE_TCL 128 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 

__attribute__((used)) static void FUNC5(struct strbuf *s, const char *str, int quote_style)
{
	switch (quote_style) {
	case QUOTE_NONE:
		FUNC3(s, str);
		break;
	case QUOTE_SHELL:
		FUNC2(s, str);
		break;
	case QUOTE_PERL:
		FUNC0(s, str);
		break;
	case QUOTE_PYTHON:
		FUNC1(s, str);
		break;
	case QUOTE_TCL:
		FUNC4(s, str);
		break;
	}
}