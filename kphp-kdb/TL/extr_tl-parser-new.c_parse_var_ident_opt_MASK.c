#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;
struct TYPE_4__ {scalar_t__ type; int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  ptr; } ;
struct TYPE_5__ {TYPE_1__ lex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  PARSE_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 TYPE_3__* T ; 
 scalar_t__ lex_lc_ident ; 
 scalar_t__ lex_uc_ident ; 
 TYPE_2__ parse ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  type_var_ident_opt ; 

struct tree *FUNC4 (void) {
  FUNC1 (type_var_ident_opt);
  if ((parse.lex.type == lex_lc_ident || parse.lex.type == lex_uc_ident)&& !(parse.lex.flags & 3)) {
    T->text = parse.lex.ptr;
    T->len = parse.lex.len;
    T->flags = parse.lex.flags;
    FUNC3 ();
    PARSE_OK;
  } else if (FUNC0 ('_')) {
    T->text = parse.lex.ptr;
    T->len = parse.lex.len;
    T->flags = parse.lex.flags;
    FUNC3 ();
    PARSE_OK;
  } else {
    FUNC2 ("Can not parse var ident opt");
    PARSE_FAIL;
  }
}