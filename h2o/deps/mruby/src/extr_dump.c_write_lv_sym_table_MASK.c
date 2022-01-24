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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb, uint8_t **start, mrb_sym const *syms, uint32_t syms_len)
{
  uint8_t *cur = *start;
  uint32_t i;
  const char *str;
  mrb_int str_len;

  cur += FUNC3(syms_len, cur);

  for (i = 0; i < syms_len; ++i) {
    str = FUNC1(mrb, syms[i], &str_len);
    cur += FUNC2((uint16_t)str_len, cur);
    FUNC0(cur, str, str_len);
    cur += str_len;
  }

  *start = cur;

  return MRB_DUMP_OK;
}