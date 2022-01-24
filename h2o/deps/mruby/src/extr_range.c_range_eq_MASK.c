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
struct RRange {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC1 (struct RRange*) ; 
 scalar_t__ FUNC2 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RRange* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value range)
{
  struct RRange *rr;
  struct RRange *ro;
  mrb_value obj, v1, v2;

  FUNC6(mrb, "o", &obj);

  if (FUNC8(mrb, range, obj)) return FUNC11();
  if (!FUNC9(mrb, obj, FUNC7(mrb, range))) { /* same class? */
    return FUNC4();
  }

  rr = FUNC10(mrb, range);
  ro = FUNC10(mrb, obj);
  v1 = FUNC5(mrb, FUNC0(rr), "==", 1, FUNC0(ro));
  v2 = FUNC5(mrb, FUNC1(rr), "==", 1, FUNC1(ro));
  if (!FUNC3(v1) || !FUNC3(v2) || FUNC2(rr) != FUNC2(ro)) {
    return FUNC4();
  }
  return FUNC11();
}