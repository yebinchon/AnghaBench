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
struct lev_antispam_del_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  lev_antispam_del_pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_ANTISPAM_DEL_PATTERN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2 (int id) {
  lev_antispam_del_pattern_t *E =
    FUNC0 (LEV_ANTISPAM_DEL_PATTERN, sizeof (struct lev_antispam_del_pattern), id);
  return FUNC1 (E);
}