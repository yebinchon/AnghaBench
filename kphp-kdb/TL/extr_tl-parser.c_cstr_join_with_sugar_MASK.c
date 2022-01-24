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
struct tl_token {char* text; struct tl_token* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_token*,int*,int*) ; 
 char* FUNC4 (int) ; 

char *FUNC5 (struct tl_token *T) {
  int i, n, l;
  FUNC3 (T, &n, &l);
  FUNC0 (n >= 1);
  if (n == 1) {
    return FUNC1 (T->text);
  }
  l += n + 1;
  char *buf = FUNC4 (l), *p = buf;
  for (i = 0; T != NULL; T = T->next, i++) {
    p += FUNC2 (p, "%s", T->text);
    *p++ = i ? ((i == n - 1) ? '>' : ',') : '<';
  }
  *p++ = 0;
  FUNC0 (p == buf + l);
  return buf;
}