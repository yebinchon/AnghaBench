#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  new_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; TYPE_1__ E; int /*<<< orphan*/  mrk; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_curfile_data_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ curfile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4 (unsigned parts) {
  FUNC1 (curfile.mrk);
  unsigned size = parts << 16;
  if (size > 0x1000000) {
    curfile.data = allocated_curfile_data_ptr = FUNC2 (curfile.E.new_size);
    FUNC0 (curfile.data);
  } else {
    curfile.data = FUNC3 (size);
  }
}