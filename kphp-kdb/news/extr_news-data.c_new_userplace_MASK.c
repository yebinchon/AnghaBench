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
typedef  int /*<<< orphan*/  userplace_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  userplace_kept ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static userplace_t *FUNC2 (void) {
  FUNC0 (NOTIFY_MODE);
  userplace_kept ++;
  return FUNC1 (sizeof (userplace_t));
}