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
struct tmpl {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
#define  PACK_DIR_BASE64 137 
#define  PACK_DIR_CHAR 136 
#define  PACK_DIR_DOUBLE 135 
#define  PACK_DIR_FLOAT 134 
#define  PACK_DIR_HEX 133 
 int PACK_DIR_INVALID ; 
#define  PACK_DIR_LONG 132 
 int PACK_DIR_NUL ; 
#define  PACK_DIR_QUAD 131 
#define  PACK_DIR_SHORT 130 
#define  PACK_DIR_STR 129 
#define  PACK_DIR_UTF8 128 
 unsigned int PACK_FLAG_COUNT2 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tmpl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tmpl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct tmpl*,int*,int*,int*,int*,unsigned int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC16 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC18 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC19 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static mrb_value
FUNC21(mrb_state *mrb, mrb_value str, int single)
{
  mrb_value result;
  struct tmpl tmpl;
  int count;
  unsigned int flags;
  int dir, size, type;
  int srcidx, srclen;
  const unsigned char *sptr;

  FUNC8(mrb, &tmpl);

  srcidx = 0;
  srclen = (int)FUNC1(str);

  result = FUNC4(mrb);
  while (FUNC3(&tmpl)) {
    FUNC9(mrb, &tmpl, &dir, &type, &size, &count, &flags);

    if (dir == PACK_DIR_INVALID)
      continue;
    else if (dir == PACK_DIR_NUL) {
      srcidx += FUNC20(mrb, sptr, srclen - srcidx, result, count, flags);
      continue;
    }

    if (flags & PACK_FLAG_COUNT2) {
      sptr = (const unsigned char *)FUNC2(str) + srcidx;
      switch (dir) {
      case PACK_DIR_HEX:
        srcidx += FUNC14(mrb, sptr, srclen - srcidx, result, count, flags);
        break;
      case PACK_DIR_STR:
        srcidx += FUNC10(mrb, sptr, srclen - srcidx, result, count, flags);
        break;
      }
      continue;
    }

    while (count != 0) {
      if (srclen - srcidx < size) {
        while (count-- > 0) {
          FUNC5(mrb, result, FUNC6());
        }
        break;
      }

      sptr = (const unsigned char*)FUNC2(str) + srcidx;
      switch (dir) {
      case PACK_DIR_CHAR:
        srcidx += FUNC11(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case PACK_DIR_SHORT:
        srcidx += FUNC18(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case PACK_DIR_LONG:
        srcidx += FUNC15(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case PACK_DIR_QUAD:
        srcidx += FUNC17(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case PACK_DIR_BASE64:
        srcidx += FUNC16(mrb, sptr, srclen - srcidx, result, flags);
        break;
#ifndef MRB_WITHOUT_FLOAT
      case PACK_DIR_FLOAT:
        srcidx += FUNC13(mrb, sptr, srclen - srcidx, result, flags);
        break;
      case PACK_DIR_DOUBLE:
        srcidx += FUNC12(mrb, sptr, srclen - srcidx, result, flags);
        break;
#endif
      case PACK_DIR_UTF8:
        srcidx += FUNC19(mrb, sptr, srclen - srcidx, result, flags);
        break;
      default:
        FUNC7(mrb, E_RUNTIME_ERROR, "mruby-pack's bug");
      }
      if (count > 0) {
        count--;
      }
    }
    if (single) break;
  }

  if (single) return FUNC0(result)[0];
  return result;
}