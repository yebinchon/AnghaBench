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
struct TYPE_3__ {scalar_t__ type; char* ptr; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ lex_char ; 
 TYPE_2__ parse ; 
 int /*<<< orphan*/  parse_type_term ; 
 int /*<<< orphan*/  parse_var_ident ; 
 int /*<<< orphan*/  type_opt_args ; 

struct tree *FUNC3 (void) {
  FUNC1 (type_opt_args);
  while (1) {
    FUNC2 (parse_var_ident);
    if (parse.lex.type == lex_char && *parse.lex.ptr == ':') { break;}
  }
  FUNC0 (":");
  FUNC2 (parse_type_term);
  PARSE_OK;
}