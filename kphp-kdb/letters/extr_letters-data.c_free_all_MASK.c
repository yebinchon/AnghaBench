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
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int memory_buf_mx; } ;

/* Variables and functions */
 int MAX_LETTER_SIZE ; 
 int MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * drive_l_to_letter ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_2__ header ; 
 int /*<<< orphan*/  id_to_letter ; 
 int /*<<< orphan*/  letter_buf ; 
 int /*<<< orphan*/  letter_buf_get ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * memory_buf ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  task_deletes ; 
 int /*<<< orphan*/  task_id_to_delete_time ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

void FUNC10 (void) {
  //TODO truncate files
  FUNC6 (-1, "Engine restart");

  FUNC4 (1);

  int i;
  FUNC1 (1);
  for (i = 0; i < MAX_PRIORITY; i++) {
    FUNC1 (2 + i);
  }

  if (verbosity > 0) {
    FUNC8 (&id_to_letter);
    for (i = 0; i < MAX_PRIORITY; i++) {
      FUNC8 (&drive_l_to_letter[i]);
    }

    FUNC9 (task_deletes);
    FUNC7 (&task_id_to_delete_time);

    for (i = 0; i < MAX_PRIORITY; i++) {
      FUNC2 (memory_buf[i], header.data[i].memory_buf_mx);
    }

    FUNC2 (letter_buf, 2 * MAX_LETTER_SIZE + 1100);
    FUNC2 (letter_buf_get, 2 * MAX_LETTER_SIZE + 1100);
    FUNC5 (stderr, "Memory left: %ld\n", FUNC3());
//    while (1) {}
    FUNC0 (FUNC3() == 0);
  }
}