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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jq_state* jq, jv component, jv value_at_path) {
  if (jq->subexp_nest == 0 && FUNC5(jq->path) == JV_KIND_ARRAY) {
    int n1 = FUNC2(FUNC3(jq->path));
    jq->path = FUNC1(jq->path, component);
    int n2 = FUNC2(FUNC3(jq->path));
    FUNC0(n2 == n1 + 1);
    FUNC4(jq->value_at_path);
    jq->value_at_path = value_at_path;
  } else {
    FUNC4(component);
    FUNC4(value_at_path);
  }
}