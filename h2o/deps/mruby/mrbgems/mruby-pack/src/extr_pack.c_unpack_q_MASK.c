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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_RANGE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PACK_FLAG_LITTLEENDIAN ; 
 unsigned int PACK_FLAG_SIGNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned long long) ; 

__attribute__((used)) static int
FUNC6(mrb_state *mrb, const unsigned char *src, int srclen, mrb_value ary, unsigned int flags)
{
  char msg[60];
  uint64_t ull;
  int i, pos, step;
  mrb_int n;

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    pos  = 7;
    step = -1;
  } else {
    pos  = 0;
    step = 1;
  }
  ull = 0;
  for (i = 0; i < 8; i++) {
    ull = ull * 256 + (uint64_t)src[pos];
    pos += step;
  }
  if (flags & PACK_FLAG_SIGNED) {
    int64_t sll = ull;
    if (!FUNC0(sll)) {
      FUNC5(msg, sizeof(msg), "cannot unpack to Fixnum: %lld", (long long)sll);
      FUNC4(mrb, E_RANGE_ERROR, msg);
    }
    n = sll;
  } else {
    if (!FUNC1(ull)) {
      FUNC5(msg, sizeof(msg), "cannot unpack to Fixnum: %llu", (unsigned long long)ull);
      FUNC4(mrb, E_RANGE_ERROR, msg);
    }
    n = ull;
  }
  FUNC2(mrb, ary, FUNC3(n));
  return 8;
}