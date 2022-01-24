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
typedef  int uint32_t ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *response, uint32_t *mode,
					struct strbuf *dataref)
{
	const char *tab;
	const char *response_end;

	FUNC0(response);
	response_end = response + FUNC4(response);

	if (*response == 'm') {	/* Missing. */
		errno = ENOENT;
		return -1;
	}

	/* Mode. */
	if (response_end - response < (signed) FUNC4("100644") ||
	    response[FUNC4("100644")] != ' ')
		FUNC1("invalid ls response: missing mode: %s", response);
	*mode = 0;
	for (; *response != ' '; response++) {
		char ch = *response;
		if (ch < '0' || ch > '7')
			FUNC1("invalid ls response: mode is not octal: %s", response);
		*mode *= 8;
		*mode += ch - '0';
	}

	/* ' blob ' or ' tree ' */
	if (response_end - response < (signed) FUNC4(" blob ") ||
	    (response[1] != 'b' && response[1] != 't'))
		FUNC1("unexpected ls response: not a tree or blob: %s", response);
	response += FUNC4(" blob ");

	/* Dataref. */
	tab = FUNC2(response, '\t', response_end - response);
	if (!tab)
		FUNC1("invalid ls response: missing tab: %s", response);
	FUNC3(dataref, response, tab - response);
	return 0;
}