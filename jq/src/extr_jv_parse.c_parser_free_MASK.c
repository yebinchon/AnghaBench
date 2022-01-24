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
struct jv_parser {int /*<<< orphan*/  dtoa; int /*<<< orphan*/  tokenbuf; int /*<<< orphan*/  stack; int /*<<< orphan*/  output; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct jv_parser*) ; 

__attribute__((used)) static void FUNC4(struct jv_parser* p) {
  FUNC3(p);
  FUNC0(p->path);
  FUNC0(p->output);
  FUNC1(p->stack);
  FUNC1(p->tokenbuf);
  FUNC2(&p->dtoa);
}