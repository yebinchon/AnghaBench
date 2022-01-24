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
struct item {int dummy; } ;

/* Variables and functions */
 int NODE_TYPE_MINUS ; 
 int NODE_TYPE_PLUS ; 
 scalar_t__ FUNC0 (struct item*) ; 
 int FUNC1 (struct item*) ; 
 scalar_t__ NODE_TYPE_UNSURE ; 

__attribute__((used)) static void FUNC2 (struct item *T, int Z[3]) {
  int x = FUNC1 (T);
  int u = FUNC0 (T) == NODE_TYPE_UNSURE;
  if (x == NODE_TYPE_PLUS) {
    Z[0] ++;
    if (u) { Z[2] ++; }
  } else if (x == NODE_TYPE_MINUS) {
    Z[0] --;
    if (u) { Z[1] ++; }
  }
}