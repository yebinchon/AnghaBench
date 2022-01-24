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
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__*,int,long long) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__* value_buff ; 

int FUNC3 (struct connection *c, long long item_id, int size) {
  FUNC0 (FUNC2 (&c->In, value_buff, size) == size);
  value_buff[size] = 0;
  return FUNC1 (value_buff, size, item_id);
}