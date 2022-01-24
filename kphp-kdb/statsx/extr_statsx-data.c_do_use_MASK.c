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
struct counter {scalar_t__ next_use; scalar_t__ prev_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct counter*) ; 
 int /*<<< orphan*/  FUNC1 (struct counter*) ; 

__attribute__((used)) static void FUNC2 (struct counter *C) {
  if (C->prev_use && C->next_use) {
    FUNC1 (C);
    FUNC0 (C);
  }
}