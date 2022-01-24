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
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value *hash, mrb_int argc, const mrb_value *argv)
{
  mrb_value tmp;

  if (!FUNC3(*hash)) return *hash;
  if (argc != 2) {
    FUNC2(mrb, E_ARGUMENT_ERROR, "one hash required");
  }
  tmp = FUNC0(mrb, argv[1]);
  if (FUNC1(tmp)) {
    FUNC2(mrb, E_ARGUMENT_ERROR, "one hash required");
  }
  return (*hash = tmp);
}