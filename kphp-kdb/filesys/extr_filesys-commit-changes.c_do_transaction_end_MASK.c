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

/* Variables and functions */
 int /*<<< orphan*/  LEV_FILESYS_XFS_END_TRANSACTION ; 
 int /*<<< orphan*/  events ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int transaction_id ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 () {
  if (!events) {
    FUNC0 ("Transaction didn't contain any event. Nothing output to the binlog.\n");
    return;
  }
  int *p = FUNC1 (LEV_FILESYS_XFS_END_TRANSACTION, 8);
  p[1] = transaction_id;
  FUNC2 (1, "Transaction contains %lld events.\n", events);
}