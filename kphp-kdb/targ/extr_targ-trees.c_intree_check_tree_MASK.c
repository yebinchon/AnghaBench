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
typedef  int /*<<< orphan*/  treespace_t ;
typedef  int /*<<< orphan*/  treeref_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC1 (treespace_t TS, treeref_t T) {
  return FUNC0 (TS, T, -1 << 31, ~(-1 << 31));
}