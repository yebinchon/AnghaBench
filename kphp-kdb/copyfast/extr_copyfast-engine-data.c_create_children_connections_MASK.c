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
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct node) ; 

void FUNC1 (struct node *children, int children_num) {
  int i;
  for (i = 0; i < children_num; i++) {
    FUNC0 (children[i]);
  }
}