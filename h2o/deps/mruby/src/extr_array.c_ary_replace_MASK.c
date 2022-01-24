#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RBasic {int dummy; } ;
struct TYPE_5__ {TYPE_4__* shared; scalar_t__ capa; } ;
struct TYPE_6__ {TYPE_1__ aux; scalar_t__ len; int /*<<< orphan*/ * ptr; } ;
struct TYPE_7__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_8__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RArray*) ; 
 scalar_t__ FUNC1 (struct RArray*) ; 
 scalar_t__ FUNC2 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC3 (struct RArray*) ; 
 scalar_t__ ARY_REPLACE_SHARED_MIN ; 
 int /*<<< orphan*/  FUNC4 (struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct RArray*) ; 
 scalar_t__ FUNC6 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC7 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC8 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC9 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct RArray*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct RArray*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct RBasic*) ; 

__attribute__((used)) static void
FUNC17(mrb_state *mrb, struct RArray *a, struct RArray *b)
{
  mrb_int len = FUNC2(b);

  FUNC13(mrb, a);
  if (a == b) return;
  if (FUNC6(a)) {
    FUNC14(mrb, a->as.heap.aux.shared);
    a->as.heap.aux.capa = 0;
    a->as.heap.len = 0;
    a->as.heap.ptr = NULL;
    FUNC8(a);
  }
  if (FUNC6(b)) {
  shared_b:
    if (FUNC1(a)) {
      FUNC7(a);
    }
    else {
      FUNC15(mrb, a->as.heap.ptr);
    }
    a->as.heap.ptr = b->as.heap.ptr;
    a->as.heap.len = len;
    a->as.heap.aux.shared = b->as.heap.aux.shared;
    a->as.heap.aux.shared->refcnt++;
    FUNC5(a);
    FUNC16(mrb, (struct RBasic*)a);
    return;
  }
  if (!FUNC9(b) && len > ARY_REPLACE_SHARED_MIN) {
    FUNC12(mrb, b);
    goto shared_b;
  }
  if (FUNC0(a) < len)
    FUNC11(mrb, a, len);
  FUNC10(FUNC3(a), FUNC3(b), len);
  FUNC16(mrb, (struct RBasic*)a);
  FUNC4(a, len);
}