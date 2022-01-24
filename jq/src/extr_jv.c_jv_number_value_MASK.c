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
struct TYPE_11__ {double num_double; } ;
typedef  TYPE_2__ jvp_literal_number ;
struct TYPE_10__ {double number; } ;
struct TYPE_12__ {scalar_t__ size; TYPE_1__ u; } ;
typedef  TYPE_3__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 scalar_t__ FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 scalar_t__ JV_NUMBER_SIZE_CONVERTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__) ; 
 double FUNC4 (TYPE_3__) ; 

double FUNC5(jv j) {
  FUNC2(FUNC1(j, JV_KIND_NUMBER));
#ifdef USE_DECNUM
  if (JVP_HAS_FLAGS(j, JVP_FLAGS_NUMBER_LITERAL)) {
    jvp_literal_number* n = jvp_literal_number_ptr(j);

    if (j.size != JV_NUMBER_SIZE_CONVERTED) {
      n->num_double = jvp_literal_number_to_double(j);
      j.size = JV_NUMBER_SIZE_CONVERTED;
    }

    return n->num_double;
  } else {
#endif
    return j.u.number;
#ifdef USE_DECNUM
  }
#endif
}