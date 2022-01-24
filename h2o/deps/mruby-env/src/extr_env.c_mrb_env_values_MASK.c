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
 int /*<<< orphan*/ ** environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char) ; 
 int FUNC4 (char*) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  int i;
  mrb_value ary;

  ary = FUNC0(mrb);
  for (i = 0; environ[i] != NULL; i++) {
    char *str = FUNC3(environ[i], '=');
    if (str) {
      int len;
      str++;
      len = FUNC4(str);
      FUNC1(mrb, ary, FUNC2(mrb, str, len));
    }
  }

  return ary;
}