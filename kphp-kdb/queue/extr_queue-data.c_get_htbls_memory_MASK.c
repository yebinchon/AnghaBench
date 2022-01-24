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
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  h_qkey ; 
 int /*<<< orphan*/  h_queue ; 
 int /*<<< orphan*/  h_subscribers ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secrets ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 

long FUNC4 (void) {
  return FUNC3 (&h_queue) +
         FUNC3 (&h_qkey) +
         FUNC1 (&secrets) +
         FUNC2 (&alias) +
         FUNC0 (&h_subscribers);
}