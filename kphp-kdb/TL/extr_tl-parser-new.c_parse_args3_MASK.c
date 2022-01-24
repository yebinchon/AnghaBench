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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  FUNC6 (struct parse) ; 
 int /*<<< orphan*/  parse_optional_arg_def ; 
 int /*<<< orphan*/  parse_type_term ; 
 int /*<<< orphan*/  parse_var_ident_opt ; 
 struct parse FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  type_args3 ; 
 int /*<<< orphan*/  type_exclam ; 

struct tree *FUNC9 (void) {
  FUNC3 (type_args3);
  FUNC5 (parse_var_ident_opt);
  FUNC0 (":");
  struct parse so = FUNC7 ();
  FUNC4 (parse_optional_arg_def);
  if (S) {
    FUNC8 (T, S);
  } else {
    FUNC6 (so);    
  }
  if (FUNC1 ('!')) {
    FUNC2 (type_exclam);
    FUNC0 ("!");
  }
  FUNC5 (parse_type_term);
  PARSE_OK;
}