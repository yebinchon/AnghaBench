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
typedef  size_t mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value s, mrb_int i)
{
  if (i < 0) i = FUNC0(s) + i;
  if (i < 0)
      FUNC3(mrb, E_INDEX_ERROR,
                 "offset %S too small for struct(size:%S)",
                 FUNC2(i), FUNC2(FUNC0(s)));
  if (FUNC0(s) <= i)
    FUNC3(mrb, E_INDEX_ERROR,
               "offset %S too large for struct(size:%S)",
               FUNC2(i), FUNC2(FUNC0(s)));
  return FUNC1(s)[i];
}