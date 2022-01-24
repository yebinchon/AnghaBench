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
typedef  int /*<<< orphan*/  mrb_int ;
typedef  int /*<<< orphan*/  fsize_t ;

/* Variables and functions */
 int HOST_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value cls)
{
  mrb_value buf;
  size_t bufsize;

#ifdef HOST_NAME_MAX
  bufsize = HOST_NAME_MAX + 1;
#else
  bufsize = 256;
#endif
  buf = FUNC2(mrb, (mrb_int)bufsize);
  if (FUNC1(FUNC0(buf), (fsize_t)bufsize) != 0)
    FUNC4(mrb, "gethostname");
  FUNC3(mrb, buf, (mrb_int)FUNC5(FUNC0(buf)));
  return buf;
}