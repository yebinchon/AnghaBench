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
 size_t ansI ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  fsz ; 
 int /*<<< orphan*/  w_buff ; 
 scalar_t__ w_buff_n ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1() {
  FUNC0 (fd[ansI], w_buff, w_buff_n);
  fsz += w_buff_n;
  w_buff_n = 0;
}