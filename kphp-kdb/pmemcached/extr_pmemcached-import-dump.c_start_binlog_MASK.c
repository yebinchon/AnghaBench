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
struct lev_start {int schema_id; int extra_bytes; int /*<<< orphan*/  str; void* split_max; void* split_min; int /*<<< orphan*/  split_mod; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  split_modulo ; 
 void* split_rem ; 
 int FUNC1 (char*) ; 
 struct lev_start* FUNC2 (int) ; 

void FUNC3 (int schema_id, char *str) {
  int len = str ? FUNC1(str)+1 : 0;
  int extra = (len + 3) & -4;
  if (len == 1) { extra = len = 0; }
  struct lev_start *E = FUNC2 (sizeof(struct lev_start) - 4 + extra);
  E->type = LEV_START;
  E->schema_id = schema_id;
  E->extra_bytes = extra;
  E->split_mod = split_modulo;
  E->split_min = split_rem;
  E->split_max = split_rem + 1;
  if (len) {
    FUNC0 (E->str, str, len);
  }
}