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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,scalar_t__*) ; 

__attribute__((used)) static size_t
FUNC2(mrb_state *mrb, mrb_irep *irep, mrb_sym const *syms, uint32_t syms_len)
{
  size_t ret = 0, i;

  ret += sizeof(uint32_t); /* syms_len */
  ret += sizeof(uint16_t) * syms_len; /* symbol name lengths */
  for (i = 0; i < syms_len; ++i) {
    mrb_int str_len;
    FUNC1(mrb, syms[i], &str_len);
    ret += str_len;
  }

  ret += FUNC0(mrb, irep);

  return ret;
}