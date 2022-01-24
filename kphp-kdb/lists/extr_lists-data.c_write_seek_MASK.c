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
struct TYPE_2__ {int /*<<< orphan*/  newidx_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_1__ SWS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long long FUNC2 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 long long write_pos ; 

void FUNC3 (long long new_pos) {
  FUNC1();
  FUNC0 (FUNC2 (SWS.newidx_fd, new_pos, SEEK_SET) == new_pos);
  write_pos = new_pos;
}