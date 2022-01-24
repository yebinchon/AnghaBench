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
struct parse {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parse*) ; 
 scalar_t__ lex_error ; 
 scalar_t__ lex_none ; 
 int /*<<< orphan*/  FUNC1 (struct parse) ; 
 TYPE_2__ parse ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tree* FUNC3 () ; 

struct tree *FUNC4 (struct parse *_parse) {
  FUNC0 (_parse);
  FUNC1 (*_parse);
  if (parse.lex.type == lex_none) {
    FUNC2 ();
  }
  if (parse.lex.type == lex_error) {
    return 0;
  }
  return FUNC3 ();
}