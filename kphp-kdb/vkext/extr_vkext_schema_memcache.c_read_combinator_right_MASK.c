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
struct tl_combinator {int /*<<< orphan*/  result; int /*<<< orphan*/  var_num; } ;

/* Variables and functions */
 scalar_t__ TLS_COMBINATOR_RIGHT ; 
 scalar_t__ TLS_COMBINATOR_RIGHT_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int schema_version ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

int FUNC4 (struct tl_combinator *c) {
  if (schema_version >= 2) {
    if (FUNC3 () != TLS_COMBINATOR_RIGHT_V2 || FUNC2 ()) {
      return -1;
    }
    c->result = FUNC1 (&c->var_num);
  } else {
    if (FUNC3 () != TLS_COMBINATOR_RIGHT || FUNC2 ()) {
      return -1;
    }
    c->result = FUNC0 (&c->var_num);
  }
  if (!c->result) {
    return -1;
  }
  return 1;
}