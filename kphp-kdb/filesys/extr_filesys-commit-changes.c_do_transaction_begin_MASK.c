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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  transaction_id ; 
 int /*<<< orphan*/  transaction_log_pos ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 () {
  transaction_log_pos = FUNC0 ();
  transaction_id++;
  FUNC1 (1, "Begin transaction Ox%X\n", transaction_id);
}