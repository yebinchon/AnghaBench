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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  transaction_dir ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2 (void) {
  FUNC1 (3, "delete_transaction_dir (\"%s\")\n", transaction_dir);
  errno = 0;
  int r = FUNC0 (transaction_dir);
  if (r < 0) {
    FUNC1 (1, "delete_file (\"%s\") returns error code %d. %m\n", transaction_dir, r);
  }
}