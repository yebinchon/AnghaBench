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
typedef  int /*<<< orphan*/  sz ;
struct connection {int /*<<< orphan*/  Tmp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int* value_buff ; 

int FUNC1 (struct connection *c) {
  int sz;
  if (FUNC0 (c->Tmp, &sz, sizeof (sz)) != sizeof (sz)) {
    return -1;
  }
  if (FUNC0 (c->Tmp, value_buff, sz) != sz) {
    return -2;
  }
  value_buff[sz] = 0;
  return 0;
}