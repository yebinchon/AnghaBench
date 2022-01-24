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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_nat_const ; 
 int /*<<< orphan*/  parse_var_ident ; 
 int /*<<< orphan*/  type_optional_arg_def ; 

struct tree *FUNC3 (void) {
  FUNC1 (type_optional_arg_def);
  FUNC2 (parse_var_ident);
  FUNC0 (".");
  FUNC2 (parse_nat_const);
  FUNC0 ("?");
  PARSE_OK;
}