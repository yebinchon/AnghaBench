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
 int CHAR_BIT ; 
 int /*<<< orphan*/  E_RANGE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value x)
{
  mrb_int chr;
  char c;

  chr = FUNC2(mrb, x);
  if (chr >= (1 << CHAR_BIT)) {
    FUNC0(mrb, E_RANGE_ERROR, "%S out of char range", x);
  }
  c = (char)chr;

  return FUNC1(mrb, &c, 1);
}