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
typedef  int /*<<< orphan*/  notify_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  items_kept ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static notify_t *FUNC3 (void) {
  FUNC0 (NOTIFY_MODE);
  items_kept++;
  notify_t *p = FUNC2 (sizeof (notify_t));
  FUNC1 (6, "new_notify_item: result = %p\n", p);
  return p;
}