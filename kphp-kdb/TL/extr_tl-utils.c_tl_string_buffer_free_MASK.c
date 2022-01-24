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
struct tl_buffer {scalar_t__ buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_buffer*,int /*<<< orphan*/ ,int) ; 

void FUNC2 (struct tl_buffer *b) {
  if (b->buff) {
    FUNC0 (b->buff);
  }
  FUNC1 (b, 0, sizeof (*b));
}