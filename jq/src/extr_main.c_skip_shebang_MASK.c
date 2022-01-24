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
 char* FUNC0 (char const*,char) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC2(const char *p) {
  if (FUNC1(p, "#!", sizeof("#!") - 1) != 0)
    return p;
  const char *n = FUNC0(p, '\n');
  if (n == NULL || n[1] != '#')
    return p;
  n = FUNC0(n + 1, '\n');
  if (n == NULL || n[1] == '#' || n[1] == '\0' || n[-1] != '\\' || n[-2] == '\\')
    return p;
  n = FUNC0(n + 1, '\n');
  if (n == NULL)
    return p;
  return n+1;
}