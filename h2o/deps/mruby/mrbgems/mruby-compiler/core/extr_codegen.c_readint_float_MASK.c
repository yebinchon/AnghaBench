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
typedef  int /*<<< orphan*/  codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* mrb_digitmap ; 
 int FUNC1 (char const*) ; 
 char FUNC2 (unsigned char) ; 

__attribute__((used)) static double
FUNC3(codegen_scope *s, const char *p, int base)
{
  const char *e = p + FUNC1(p);
  double f = 0;
  int n;

  if (*p == '+') p++;
  while (p < e) {
    char c = *p;
    c = FUNC2((unsigned char)c);
    for (n=0; n<base; n++) {
      if (mrb_digitmap[n] == c) {
        f *= base;
        f += n;
        break;
      }
    }
    if (n == base) {
      FUNC0(s, "malformed readint input");
    }
    p++;
  }
  return f;
}