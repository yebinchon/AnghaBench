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
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  E_RANGE_ERROR ; 
 int /*<<< orphan*/  E_TYPE_ERROR ; 
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
 unsigned int PACK_FLAG_WIDTH ; 
 int PACK_TYPE_FLOAT ; 
 int PACK_TYPE_INTEGER ; 
 int PACK_TYPE_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tmpl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct tmpl*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,struct tmpl*,int*,int*,int*,int*,unsigned int*) ; 

__attribute__((used)) static mrb_value
FUNC28(mrb_state *mrb, mrb_value ary)
{
  mrb_value o, result;
  mrb_int aidx;
  struct tmpl tmpl;
  int count;
  unsigned int flags;
  int dir, ridx, size, type;

  FUNC26(mrb, &tmpl);

  result = FUNC10(mrb, NULL, 128);  /* allocate initial buffer */
  aidx = 0;
  ridx = 0;
  while (FUNC1(&tmpl)) {
    FUNC27(mrb, &tmpl, &dir, &type, &size, &count, &flags);

    if (dir == PACK_DIR_INVALID)
      continue;
    else if (dir == PACK_DIR_NUL) {
        ridx += FUNC25(mrb, FUNC6(), result, ridx, count, flags);
        continue;
    }

    for (; aidx < FUNC0(ary); aidx++) {
      if (count == 0 && !(flags & PACK_FLAG_WIDTH))
        break;

      o = FUNC2(mrb, ary, aidx);
      if (type == PACK_TYPE_INTEGER) {
        o = FUNC14(mrb, o);
      }
#ifndef MRB_WITHOUT_FLOAT
      else if (type == PACK_TYPE_FLOAT) {
        if (!FUNC4(o)) {
          mrb_float f = FUNC13(mrb, o);
          o = FUNC5(mrb, f);
        }
      }
#endif
      else if (type == PACK_TYPE_STRING) {
        if (!FUNC12(o)) {
          FUNC9(mrb, E_TYPE_ERROR, "can't convert %S into String", FUNC3(mrb, FUNC7(mrb, o)));
        }
      }

      switch (dir) {
      case PACK_DIR_CHAR:
        ridx += FUNC16(mrb, o, result, ridx, flags);
        break;
      case PACK_DIR_SHORT:
        ridx += FUNC23(mrb, o, result, ridx, flags);
        break;
      case PACK_DIR_LONG:
        ridx += FUNC20(mrb, o, result, ridx, flags);
        break;
      case PACK_DIR_QUAD:
        ridx += FUNC22(mrb, o, result, ridx, flags);
        break;
      case PACK_DIR_BASE64:
        ridx += FUNC21(mrb, o, result, ridx, count, flags);
        break;
      case PACK_DIR_HEX:
        ridx += FUNC19(mrb, o, result, ridx, count, flags);
        break;
      case PACK_DIR_STR:
        ridx += FUNC15(mrb, o, result, ridx, count, flags);
        break;
#ifndef MRB_WITHOUT_FLOAT
      case PACK_DIR_DOUBLE:
        ridx += FUNC17(mrb, o, result, ridx, flags);
        break;
      case PACK_DIR_FLOAT:
        ridx += FUNC18(mrb, o, result, ridx, flags);
        break;
#endif
      case PACK_DIR_UTF8:
        ridx += FUNC24(mrb, o, result, ridx, count, flags);
        break;
      default:
        break;
      }
      if (dir == PACK_DIR_STR) { /* always consumes 1 entry */
        aidx++;
        break;
      }
      if (count > 0) {
        count--;
      }
    }
    if (ridx < 0) {
      FUNC8(mrb, E_RANGE_ERROR, "negative (or overflowed) template size");
    }
  }

  FUNC11(mrb, result, ridx);
  return result;
}