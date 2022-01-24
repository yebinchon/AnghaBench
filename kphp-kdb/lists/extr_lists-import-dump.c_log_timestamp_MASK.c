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
struct lev_generic {unsigned int a; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TIMESTAMP ; 
 struct lev_generic* FUNC0 (int) ; 

void FUNC1 (unsigned timestamp) {
  struct lev_generic *L = FUNC0 (8);
  L->type = LEV_TIMESTAMP;
  L->a = timestamp;
}