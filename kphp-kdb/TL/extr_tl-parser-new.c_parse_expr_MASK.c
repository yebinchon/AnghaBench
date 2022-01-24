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
struct tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  parse_subexpr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  type_expr ; 

struct tree *FUNC3 (void) {
  FUNC0 (type_expr);
  int cc = 0;
  while (1) {
    FUNC1 (parse_subexpr);
    if (S) {
      FUNC2 (T, S);
      cc ++;
    } else {
      if (cc < 1) { PARSE_FAIL; }
      else { PARSE_OK; }
    }
  }
}