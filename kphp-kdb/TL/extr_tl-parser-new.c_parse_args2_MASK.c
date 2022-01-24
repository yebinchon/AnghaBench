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
struct parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  FUNC5 (struct parse) ; 
 int /*<<< orphan*/  parse_args ; 
 int /*<<< orphan*/  parse_multiplicity ; 
 int /*<<< orphan*/  parse_optional_arg_def ; 
 int /*<<< orphan*/  parse_var_ident_opt ; 
 struct parse save ; 
 struct parse FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  type_args2 ; 

struct tree *FUNC8 (void) {
  FUNC2 (type_args2);
  FUNC3 (parse_var_ident_opt);
  if (S && FUNC1 (':')) {
    FUNC7 (T, S);
    FUNC0 (":");
  } else {
    FUNC5 (save);
  }
  struct parse so = FUNC6 ();
  FUNC3 (parse_optional_arg_def);
  if (S) {
    FUNC7 (T, S);
  } else {
    FUNC5 (so);    
  }
  struct parse save2 = FUNC6 ();
  FUNC3 (parse_multiplicity);
  if (S && FUNC1 ('*')) {
    FUNC7 (T, S);
    FUNC0 ("*");
  } else {
    FUNC5 (save2);
  }
  FUNC0 ("[");
  while (1) {
    if (FUNC1 (']')) { break; }
    FUNC4 (parse_args);
  }
  FUNC0 ("]");
  PARSE_OK;
}