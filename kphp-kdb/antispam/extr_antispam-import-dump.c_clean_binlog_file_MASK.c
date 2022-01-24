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
struct lev_start {int member_3; int member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  record ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ANTISPAM_SCHEMA_V1 ; 
 int /*<<< orphan*/  LEV_START ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lev_start*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5 () {
  FILE *f = FUNC2 (binlogname, "wb");
  if (f == 0) {
    FUNC3 (stderr, "fatal: can't open binlogname=%s, to cleanup (-c option)\n", binlogname);
    FUNC0 (1);
  }
  struct lev_start record = {LEV_START, ANTISPAM_SCHEMA_V1, 0, 1, 0, 1};
  FUNC4 (&record, sizeof (record) - 4, 1, f);
  FUNC1 (f);
}