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
 int /*<<< orphan*/  FUNC0 (char*,int,size_t) ; 
 size_t FUNC1 () ; 

__attribute__((used)) static void FUNC2(int idx) {
  size_t res = FUNC1();
  FUNC0("dbg free memory(%d): %d\r\n", idx, res);
}