#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* literal_data; } ;
typedef  TYPE_2__ jvp_literal_number ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef  TYPE_3__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 scalar_t__ FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jv j) {
  FUNC2(FUNC1(j, JV_KIND_NUMBER));
  if (FUNC0(j, JVP_FLAGS_NUMBER_LITERAL) && FUNC5(j.u.ptr)) {
    jvp_literal_number* n = FUNC4(j);
    if (n->literal_data) {
      FUNC3(n->literal_data);
    }
    FUNC3(n);
  }
}