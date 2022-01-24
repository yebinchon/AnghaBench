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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_combinator_id ; 
 int /*<<< orphan*/  parse_subexpr ; 
 int /*<<< orphan*/  type_partial_comb_app_decl ; 

struct tree *FUNC3 (void) {
  FUNC1 (type_partial_comb_app_decl);
  FUNC2 (parse_combinator_id);
  while (1) {
    FUNC2 (parse_subexpr);
    if (FUNC0 (';')) { break; }
  }
  PARSE_OK;
}