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

/* Variables and functions */
 int Aflag ; 
 int MAXLINE ; 
 char* cp ; 
 char* file ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* firstfile ; 
 char* limit ; 
 int lineno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void) {
	for (cp++; *cp == ' ' || *cp == '\t'; )
		cp++;
	if (limit - cp < MAXLINE)
		FUNC0();
	if (FUNC4((char *)cp, "pragma", 6) == 0) {
		cp += 6;
		FUNC2();
	} else if (*cp >= '0' && *cp <= '9') {
	line:	for (lineno = 0; *cp >= '0' && *cp <= '9'; )
			lineno = 10*lineno + *cp++ - '0';
		lineno--;
		while (*cp == ' ' || *cp == '\t')
			cp++;
		if (*cp == '"') {
			file = (char *)++cp;
			while (*cp && *cp != '"' && *cp != '\n')
				cp++;
			file = FUNC3(file, (char *)cp - file);
			if (*cp == '\n')
				FUNC5("missing \" in preprocessor line\n");
			if (firstfile == 0)
				firstfile = file;
		}
	} else if (FUNC4((char *)cp, "line", 4) == 0) {
		for (cp += 4; *cp == ' ' || *cp == '\t'; )
			cp++;
		if (*cp >= '0' && *cp <= '9')
			goto line;
		if (Aflag >= 2)
			FUNC5("unrecognized control line\n");
	} else if (Aflag >= 2 && *cp != '\n')
		FUNC5("unrecognized control line\n");
	while (*cp)
		if (*cp++ == '\n') {
			if (cp == limit + 1)
				FUNC1();
			else
				break;
		}
}