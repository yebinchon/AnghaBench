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
struct value_buffer {int wptr; int w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long long*,int) ; 

__attribute__((used)) static void FUNC1 (struct value_buffer *B, long long t) {
  FUNC0 (B->wptr, &t, 8);
  B->w += 8;
  B->wptr += 8;
}