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
 char const** environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static jv
FUNC8(jv env)
{
  if (FUNC1(env))
    return FUNC0(env);
  jv r = FUNC2();
  if (environ == NULL)
    return r;
  for (size_t i = 0; environ[i] != NULL; i++) {
    const char *eq;

    if ((eq = FUNC7(environ[i], '=')) == NULL)
      r = FUNC3(r, FUNC5(environ[i]));
    else
      r = FUNC4(r, FUNC6(environ[i], eq - environ[i]), FUNC5(eq + 1));
  }
  return FUNC0(r);
}