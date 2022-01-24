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
struct RArray {int dummy; } ;
typedef  scalar_t__ mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RArray*) ; 
 scalar_t__* FUNC1 (struct RArray*) ; 
#define  MRB_TT_FIXNUM 129 
#define  MRB_TT_RANGE 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RArray*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct RArray* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,char*,int,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC14(mrb_state *mrb, mrb_value self)
{
  struct RArray *a = FUNC5(self);
  mrb_int i, j, k, len, alen;
  mrb_value val;
  mrb_value *ptr;
  mrb_value ary;

  FUNC2(mrb, a);

  if (FUNC9(mrb) == 1) {
    mrb_value index;

    FUNC10(mrb, "o|i", &index, &len);
    switch (FUNC13(index)) {
    case MRB_TT_RANGE:
      if (FUNC12(mrb, index, &i, &len, FUNC0(a), TRUE) == 1) {
        goto delete_pos_len;
      }
      else {
        return FUNC11();
      }
    case MRB_TT_FIXNUM:
      val = FUNC8(mrb, self, "delete_at", 1, index);
      return val;
    default:
      val = FUNC8(mrb, self, "delete_at", 1, index);
      return val;
    }
  }

  FUNC10(mrb, "ii", &i, &len);
 delete_pos_len:
  alen = FUNC0(a);
  if (i < 0) i += alen;
  if (i < 0 || alen < i) return FUNC11();
  if (len < 0) return FUNC11();
  if (alen == i) return FUNC3(mrb);
  if (len > alen - i) len = alen - i;

  ary = FUNC4(mrb, len);
  ptr = FUNC1(a);
  for (j = i, k = 0; k < len; ++j, ++k) {
    FUNC6(mrb, ary, ptr[j]);
  }

  ptr += i;
  for (j = i; j < alen - len; ++j) {
    *ptr = *(ptr+len);
    ++ptr;
  }

  FUNC7(mrb, self, alen - len);
  return ary;
}