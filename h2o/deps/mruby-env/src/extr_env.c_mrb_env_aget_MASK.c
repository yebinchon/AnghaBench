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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  mrb_value key;
  const char *cname, *cvalue;

  FUNC1(mrb, "S", &key);
  cname = FUNC4(mrb, &key);
  cvalue = FUNC0(cname);
  if (cvalue != NULL) {
    return FUNC3(mrb, cvalue);
  } else {
    return FUNC2();
  }
}