#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ lex_eof ; 
 scalar_t__ lex_error ; 
 TYPE_2__ parse ; 
 int /*<<< orphan*/  parse_constr_declarations ; 
 int /*<<< orphan*/  parse_fun_declarations ; 
 int /*<<< orphan*/  type_tl_program ; 

struct tree *FUNC3 (void) {
  FUNC0 (type_tl_program);
  while (1) {
    FUNC1 (parse_constr_declarations);
    if (parse.lex.type == lex_eof) { PARSE_OK; }
    if (parse.lex.type == lex_error || FUNC2 ("---") < 0 || FUNC2 ("functions") < 0 || FUNC2 ("---") < 0) { PARSE_FAIL; }

    FUNC1 (parse_fun_declarations);
    if (parse.lex.type == lex_eof) { PARSE_OK; }
    if (parse.lex.type == lex_error || FUNC2 ("---") < 0 || FUNC2 ("types") < 0 || FUNC2 ("---") < 0) { PARSE_FAIL; }
  }
}