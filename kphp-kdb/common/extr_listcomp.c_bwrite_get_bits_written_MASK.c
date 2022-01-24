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
struct bitwriter {int ptr; int start_ptr; int prefix_bit_offset; int /*<<< orphan*/  m; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

unsigned int FUNC1 (const struct bitwriter *bw) {
  return ((bw->ptr - bw->start_ptr) << 3) + (8 - FUNC0 (bw->m)) - bw->prefix_bit_offset;
}