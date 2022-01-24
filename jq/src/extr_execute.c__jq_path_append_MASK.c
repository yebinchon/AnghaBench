#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_3__ {scalar_t__ subexp_nest; int /*<<< orphan*/  value_at_path; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

jv
FUNC7(jq_state *jq, jv v, jv p, jv value_at_path) {
  if (jq->subexp_nest != 0 ||
      FUNC4(jq->path) != JV_KIND_ARRAY ||
      !FUNC6(value_at_path)) {
    FUNC3(v);
    FUNC3(p);
    return value_at_path;
  }
  if (!FUNC5(v, FUNC2(jq->value_at_path))) {
    FUNC3(p);
    return value_at_path;
  }
  if (FUNC4(p) == JV_KIND_ARRAY)
    jq->path = FUNC1(jq->path, p);
  else
    jq->path = FUNC0(jq->path, p);
  FUNC3(jq->value_at_path);
  return FUNC2(jq->value_at_path = value_at_path);
}