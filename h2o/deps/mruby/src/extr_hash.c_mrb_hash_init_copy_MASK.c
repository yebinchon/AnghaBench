#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct RHash {int /*<<< orphan*/  flags; int /*<<< orphan*/  ht; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_11__ {int /*<<< orphan*/  hash_class; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  htable ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  MRB_HASH_DEFAULT ; 
 int /*<<< orphan*/  MRB_HASH_PROC_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_HASH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct RHash*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC15(mrb_state *mrb, mrb_value self)
{
  mrb_value orig;
  struct RHash* copy;
  htable *orig_h;
  mrb_value ifnone, vret;

  FUNC5(mrb, "o", &orig);
  if (FUNC11(mrb, self, orig)) return self;
  if ((FUNC14(self) != FUNC14(orig)) || (FUNC10(mrb, self) != FUNC10(mrb, orig))) {
      FUNC13(mrb, E_TYPE_ERROR, "initialize_copy should take same class object");
  }

  orig_h = FUNC3(self);
  copy = (struct RHash*)FUNC9(mrb, MRB_TT_HASH, mrb->hash_class);
  copy->ht = FUNC4(mrb, orig_h);

  if (FUNC0(self)) {
    copy->flags |= MRB_HASH_DEFAULT;
  }
  if (FUNC1(self)) {
    copy->flags |= MRB_HASH_PROC_DEFAULT;
  }
  vret = FUNC12(copy);
  ifnone = FUNC2(self);
  if (!FUNC8(ifnone)) {
      FUNC7(mrb, vret, FUNC6(mrb, "ifnone"), ifnone);
  }
  return vret;
}