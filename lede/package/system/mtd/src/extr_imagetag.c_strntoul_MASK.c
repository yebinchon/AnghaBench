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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 

__attribute__((used)) static uint32_t FUNC4(char *str, char **endptr, int base, size_t len) {
  char *newstr;
  uint32_t res = 0;

  newstr = FUNC0(len + 1, sizeof(char));
  if (newstr) {
	FUNC2(newstr, str, len); 
	res = FUNC3(newstr, endptr, base);
	FUNC1(newstr);
  }
  return res;
}