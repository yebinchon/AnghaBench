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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 char* mrb_digitmap ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value x, int base)
{
  char buf[66], *b = buf + sizeof buf;
  mrb_int num = FUNC0(x);
  uint64_t val = (uint64_t)num;
  char d;

  if (base != 2) {
    FUNC2(mrb, E_ARGUMENT_ERROR, "invalid radix %S", FUNC1(base));
  }
  if (val == 0) {
    return FUNC4(mrb, "0");
  }
  *--b = '\0';
  do {
    *--b = mrb_digitmap[(int)(val % base)];
  } while (val /= base);

  if (num < 0) {
    b = FUNC5(b, base);
    switch (base) {
    case 16: d = 'f'; break;
    case 8:  d = '7'; break;
    case 2:  d = '1'; break;
    default: d = 0;   break;
    }

    if (d && *b != d) {
      *--b = d;
    }
  }

  return FUNC3(mrb, b);
}