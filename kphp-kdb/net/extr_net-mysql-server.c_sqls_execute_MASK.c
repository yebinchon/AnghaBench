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
struct connection {int dummy; } ;

/* Variables and functions */
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,int,int,char*,int,int) ; 
 int FUNC1 (struct connection*,int) ; 

int FUNC2 (struct connection *c, int op) {
  int res = FUNC1 (c, op);
  if (res == SKIP_ALL_BYTES) {
    FUNC0 (c, 1045, 28000, "Failed", 6, 1);
  }
  return res;
}