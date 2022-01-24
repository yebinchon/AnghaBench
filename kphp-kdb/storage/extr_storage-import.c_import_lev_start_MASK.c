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
struct lev_start {int extra_bytes; int /*<<< orphan*/ * str; void* split_max; void* split_min; int /*<<< orphan*/  split_mod; int /*<<< orphan*/  schema_id; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_START ; 
 int /*<<< orphan*/  STORAGE_SCHEMA_V1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lev_start*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_start*) ; 
 struct lev_start* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  split_modulo ; 
 void* split_rem ; 
 int volume_id ; 

__attribute__((used)) static void FUNC5 (void) {
  int md5_mode = 0;
  struct lev_start *E = FUNC3 (36);
  E->type = LEV_START;
  E->schema_id = STORAGE_SCHEMA_V1;
  E->extra_bytes = 12;
  E->split_mod = split_modulo;
  E->split_min = split_rem;
  E->split_max = split_rem + 1;
  FUNC4 (E->str, &volume_id, 8);
  FUNC4 (&E->str[8], &md5_mode, 4);
  FUNC0 (!FUNC1 (E, 36));
  FUNC2 (E);
}