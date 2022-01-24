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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 unsigned int PACK_FLAG_LITTLEENDIAN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ littleendian ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb, mrb_value o, mrb_value str, mrb_int sidx, unsigned int flags)
{
  int i;
  double d;
  uint8_t *buffer = (uint8_t *)&d;
  str = FUNC3(mrb, str, sidx + 8);
  d = FUNC2(o);

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    if (littleendian) {
      FUNC1(FUNC0(str) + sidx, buffer, 8);
    }
    else {
      for (i = 0; i < 8; ++i) {
        FUNC0(str)[sidx + i] = buffer[8 - i - 1];
      }
    }
  } else {
    if (littleendian) {
      for (i = 0; i < 8; ++i) {
        FUNC0(str)[sidx + i] = buffer[8 - i - 1];
      }
    }
    else {
      FUNC1(FUNC0(str) + sidx, buffer, 8);
    }
  }

  return 8;
}