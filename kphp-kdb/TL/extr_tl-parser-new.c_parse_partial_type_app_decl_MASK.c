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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_boxed_type_ident ; 
 int /*<<< orphan*/  parse_expr ; 
 int /*<<< orphan*/  parse_subexpr ; 
 int /*<<< orphan*/  type_partial_type_app_decl ; 

struct tree *FUNC4 (void) {
  FUNC2 (type_partial_type_app_decl);
  FUNC3 (parse_boxed_type_ident);
  if (FUNC1 ('<')) {
    FUNC0 ("<");
    while (1) {
      FUNC3 (parse_expr);
      if (FUNC1 ('>')) { break; }
      FUNC0 (",");
    }
    FUNC0 (">");
    PARSE_OK;
  } else {
    while (1) {
      FUNC3 (parse_subexpr);
      if (FUNC1 (';')) { break; }
    }
    PARSE_OK;
  }
}