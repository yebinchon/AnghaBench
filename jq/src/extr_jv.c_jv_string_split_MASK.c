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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 char* FUNC1 (char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char const*,char const*,int*) ; 

jv FUNC14(jv j, jv sep) {
  FUNC2(FUNC0(j, JV_KIND_STRING));
  FUNC2(FUNC0(sep, JV_KIND_STRING));
  const char *jstr = FUNC12(j);
  const char *jend = jstr + FUNC10(FUNC5(j));
  const char *sepstr = FUNC12(sep);
  const char *p, *s;
  int seplen = FUNC10(FUNC5(sep));
  jv a = FUNC3();

  FUNC2(FUNC7(a) == 1);

  if (seplen == 0) {
    int c;
    while ((jstr = FUNC13(jstr, jend, &c)))
      a = FUNC4(a, FUNC9(FUNC8(""), c));
  } else {
    for (p = jstr; p < jend; p = s + seplen) {
      s = FUNC1(p, jend - p, sepstr, seplen);
      if (s == NULL)
        s = jend;
      a = FUNC4(a, FUNC11(p, s - p));
      // Add an empty string to denote that j ends on a sep
      if (s + seplen == jend && seplen != 0)
        a = FUNC4(a, FUNC8(""));
    }
  }
  FUNC6(j);
  FUNC6(sep);
  return a;
}