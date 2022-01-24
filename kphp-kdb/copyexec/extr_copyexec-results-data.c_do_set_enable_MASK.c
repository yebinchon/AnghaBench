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
struct lev_copyexec_result_enable {unsigned long long random_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_COPYEXEC_RESULT_DISABLE ; 
 int /*<<< orphan*/  LEV_COPYEXEC_RESULT_ENABLE ; 
 struct lev_copyexec_result_enable* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long long,int) ; 

int FUNC2 (unsigned long long random_tag, int enable) {
  int r = FUNC1 (random_tag, enable);
  if (!r) {
    struct lev_copyexec_result_enable *E = FUNC0 (enable ? LEV_COPYEXEC_RESULT_ENABLE : LEV_COPYEXEC_RESULT_DISABLE, sizeof (*E), 0);
    E->random_tag = random_tag;
  }
  return r;
}