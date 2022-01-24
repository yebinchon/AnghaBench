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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*) ; 

char *FUNC5(int client, char *buf, int size) {
	int i;
	char *str1, *str2, *ptr, c;
	char name[128] = {0};

	FUNC0(client, name, sizeof(name));
	
	for (i = 0; name[i]; i++) name[i] &= 127;
	//remove all spaces
	for (ptr = FUNC4(name, " "); ptr; ptr = FUNC4(name, " ")) {
		FUNC1(ptr, ptr+1, FUNC2(ptr+1)+1);
	}
	//check for [x] and ]x[ clan names
	str1 = FUNC4(name, "[");
	str2 = FUNC4(name, "]");
	if (str1 && str2) {
		if (str2 > str1) FUNC1(str1, str2+1, FUNC2(str2+1)+1);
		else FUNC1(str2, str1+1, FUNC2(str1+1)+1);
	}
	//remove Mr prefix
	if ((name[0] == 'm' || name[0] == 'M') &&
			(name[1] == 'r' || name[1] == 'R')) {
		FUNC1(name, name+2, FUNC2(name+2)+1);
	}
	//only allow lower case alphabet characters
	ptr = name;
	while(*ptr) {
		c = *ptr;
		if ((c >= 'a' && c <= 'z') ||
				(c >= '0' && c <= '9') || c == '_') {
			ptr++;
		}
		else if (c >= 'A' && c <= 'Z') {
			*ptr += 'a' - 'A';
			ptr++;
		}
		else {
			FUNC1(ptr, ptr+1, FUNC2(ptr + 1)+1);
		}
	}
	FUNC3(buf, name, size-1);
	buf[size-1] = '\0';
	return buf;
}