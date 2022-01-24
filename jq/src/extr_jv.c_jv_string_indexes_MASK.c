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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 char* FUNC1 (char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

jv FUNC10(jv j, jv k) {
  FUNC2(FUNC0(j, JV_KIND_STRING));
  FUNC2(FUNC0(k, JV_KIND_STRING));
  const char *jstr = FUNC9(j);
  const char *idxstr = FUNC9(k);
  const char *p;
  int jlen = FUNC8(FUNC5(j));
  int idxlen = FUNC8(FUNC5(k));
  jv a = FUNC3();

  if (idxlen != 0) {
    p = jstr;
    while ((p = FUNC1(p, (jstr + jlen) - p, idxstr, idxlen)) != NULL) {
      a = FUNC4(a, FUNC7(p - jstr));
      p += idxlen;
    }
  }
  FUNC6(j);
  FUNC6(k);
  return a;
}