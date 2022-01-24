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
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  #if defined(_WIN32) || defined(_WIN64) || defined(__android__)
  mrb_raise(mrb, E_NOTIMP_ERROR, "chroot() unreliable on Win platforms");
  return mrb_fixnum_value(0);
  #else
  mrb_value spath;
  char *path;
  int res;

  FUNC2(mrb, "S", &spath);
  path = FUNC4(mrb, spath);
  res = FUNC0(path);
  if (res == -1) {
    FUNC5(mrb, path);
  }

  return FUNC1(res);
  #endif
}