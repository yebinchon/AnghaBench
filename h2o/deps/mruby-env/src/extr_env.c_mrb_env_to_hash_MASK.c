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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 char** environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  int i;
  mrb_value hash;

  hash = FUNC2(mrb);
  for (i = 0; environ[i] != NULL; i++) {
    char *str = FUNC5(environ[i], '=');
    if (str != NULL) {
      mrb_value val;
      int ai = FUNC1(mrb);
      int len = str - environ[i];
      mrb_value key = FUNC4(mrb, environ[i], len);
      str++;
      val = FUNC4(mrb, str, FUNC6(str));
      FUNC3(mrb, hash, key, val);
      FUNC0(mrb, ai);
    }
  }

  return hash;
}