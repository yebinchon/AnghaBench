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
struct lev_new_entry {int value; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 

void FUNC5(FILE *f, const char* szAction, int offset, struct lev_new_entry* E) {
  FUNC0(0 <= offset && offset <= 0xff);
  FUNC3(*f, "%s+%d\t", szAction, offset);
  FUNC1(out,E->list_id);
  FUNC4('\t', out);
  FUNC2(out,E->object_id);
  FUNC4('\t', out);
  FUNC3(out, "%d\n", E->value);
}