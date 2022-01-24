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
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static jv FUNC11(jv input, const char* escapings) {

  FUNC0(FUNC3(input) == JV_KIND_STRING);
  const char* lookup[128] = {0};
  const char* p = escapings;
  lookup[0] = "\\0";
  while (*p) {
    lookup[(int)*p] = p+1;
    p++;
    p += FUNC10(p);
    p++;
  }

  jv ret = FUNC4("");
  const char* i = FUNC8(input);
  const char* end = i + FUNC7(FUNC1(input));
  const char* cstart;
  int c = 0;
  while ((i = FUNC9((cstart = i), end, &c))) {
    if (c < 128 && lookup[c]) {
      ret = FUNC6(ret, lookup[c]);
    } else {
      ret = FUNC5(ret, cstart, i - cstart);
    }
  }
  FUNC2(input);
  return ret;

}