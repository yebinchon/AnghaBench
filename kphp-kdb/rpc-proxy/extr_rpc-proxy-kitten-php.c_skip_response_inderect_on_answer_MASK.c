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
 int /*<<< orphan*/  RPC_FUN_NEXT ; 
 int TL_RESPONSE_INDERECT ; 
 int FUNC0 () ; 

int FUNC1 (void **IP, void **Data) {
  int op = FUNC0 ();
  if (op == TL_RESPONSE_INDERECT) {
    return 1;
  }
  RPC_FUN_NEXT;
}