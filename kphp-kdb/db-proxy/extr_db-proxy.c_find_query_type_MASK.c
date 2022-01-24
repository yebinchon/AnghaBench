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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 

int FUNC3 (char *ptr, char *end) {
  int clen;
  while (ptr < end) {
    ptr = FUNC2 (ptr, end);
    clen = FUNC1 (ptr, end);
    if (clen <= 0) {
      return 0;
    }
    if ((*ptr >= 'A' && *ptr <= 'Z') || (*ptr >= 'a' && *ptr <= 'z')) {
      if (clen == 6) {
	if (!FUNC0 (ptr, "SELECT", 6)) {
	  return -1;
	} else if (!FUNC0 (ptr, "UPDATE", 6)) {
	  return 1;
	} else if (!FUNC0 (ptr, "INSERT", 6)) {
	  return 1;
	} else if (!FUNC0 (ptr, "DELETE", 6)) {
	  return 1;
	}
      }
      if (clen == 4 && !FUNC0 (ptr, "SHOW", 4)) {
	return -1;
      }
    }
    ptr += clen;
  }
  return 0;
}