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
typedef  int /*<<< orphan*/  user_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** User ; 
 int FUNC0 (int) ; 

__attribute__((used)) static user_t *FUNC1 (int user_id) {
  int i = FUNC0 (user_id);
  return i >= 0 ? User[i] : 0;
}