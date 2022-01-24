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
 char* FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 char* FUNC2 (size_t) ; 

char* FUNC3(const char* s, size_t n) {
  char* m;
  size_t len = FUNC1(s);
  if (n < len)
    len = n;
  m = FUNC2(len + 1);
  if (m == NULL)
    return NULL;
  m[len] = '\0';
  return FUNC0(m, s, len);
}