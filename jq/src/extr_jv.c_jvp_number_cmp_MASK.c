#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ decNumberSingle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(jv a, jv b) {
  FUNC3(FUNC2(a, JV_KIND_NUMBER));
  FUNC3(FUNC2(b, JV_KIND_NUMBER));

  if(FUNC1(a, JVP_FLAGS_NUMBER_LITERAL) && FUNC1(b, JVP_FLAGS_NUMBER_LITERAL)) {
    decNumberSingle res; 
    FUNC4(&res.number, 
                     FUNC8(a), 
                     FUNC8(b),
                     FUNC0()
                     );
    if (FUNC6(&res.number)) {
      return 0;
    } else if (FUNC5(&res.number)) {
      return -1;
    } else {
      return 1;
    }
  } else {
    double da = FUNC7(a), db = FUNC7(b);
    if (da < db) {
      return -1;
    } else if (da == db) {
      return 0;
    } else {
      return 1;
    }
  }
}