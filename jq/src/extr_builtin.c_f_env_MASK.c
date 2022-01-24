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
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 int INT_MAX ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static jv FUNC7(jq_state *jq, jv input) {
  FUNC0(input);
  jv env = FUNC2();
  const char *var, *val;
  for (char **e = environ; *e != NULL; e++) {
    var = e[0];
    val = FUNC6(e[0], '=');
    if (val == NULL)
      env = FUNC3(env, FUNC4(var), FUNC1());
    else if (var - val < INT_MAX)
      env = FUNC3(env, FUNC5(var, val - var), FUNC4(val + 1));
  }
  return env;
}