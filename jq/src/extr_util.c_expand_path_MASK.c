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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 char const* FUNC10 (int /*<<< orphan*/ ) ; 

jv FUNC11(jv path) {
  FUNC0(FUNC4(path) == JV_KIND_STRING);
  const char *pstr = FUNC10(path);
  jv ret = path;
  if (FUNC9(FUNC2(path)) > 1 && pstr[0] == '~' && pstr[1] == '/') {
    jv home = FUNC1();
    if (FUNC7(home)) {
      ret = FUNC8("%s/%s",FUNC10(home),pstr+2);
      FUNC3(home);
    } else {
      jv emsg = FUNC5(home);
      ret = FUNC6(FUNC8("Could not expand %s. (%s)", pstr, FUNC10(emsg)));
      FUNC3(emsg);
    }
    FUNC3(path);
  }
  return ret;
}