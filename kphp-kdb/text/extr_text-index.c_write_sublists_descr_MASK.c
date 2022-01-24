#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sublists_num; int /*<<< orphan*/  sublists_descr_offset; } ;

/* Variables and functions */
 TYPE_1__ Header ; 
 int /*<<< orphan*/  Sublists_packed ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int sublists_num ; 
 int /*<<< orphan*/  write_pos ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3 (void) {
  Header.sublists_descr_offset = write_pos;
  Header.sublists_num = sublists_num;
  FUNC0 ();
  FUNC2 (Sublists_packed, 4 * sublists_num);
  FUNC1 ();
}