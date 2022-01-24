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
struct TYPE_2__ {int /*<<< orphan*/  current_filename; } ;
typedef  TYPE_1__ jq_util_input_state ;
typedef  int /*<<< orphan*/  jq_state ;
typedef  scalar_t__ jq_input_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,void**) ; 
 scalar_t__ jq_util_input_next_input_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

jv FUNC4(jq_state* jq) {
  jq_input_cb cb=NULL;
  void *cb_data=NULL;
  FUNC0(jq, &cb, &cb_data);
  if (cb != jq_util_input_next_input_cb)
    return FUNC2(FUNC3("Unknown input filename"));
  jq_util_input_state *s = (jq_util_input_state *)cb_data;
  jv v = FUNC1(s->current_filename);
  return v;
}