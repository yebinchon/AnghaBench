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
struct lev_set_flags {int type; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LEV_LI_SET_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 

void FUNC5 (FILE *f, const char* szAction, int offset, struct lev_set_flags* E) {
  FUNC0(0 <= offset && offset <= 0xff);
  FUNC3(f, "%s+%d\t", szAction, E->type-LEV_LI_SET_FLAGS);
  FUNC1(f,E->list_id);
  FUNC4('\t', f);
  FUNC2(f,E->object_id);
  FUNC4('\n', f);
}