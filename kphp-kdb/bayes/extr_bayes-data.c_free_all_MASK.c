#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/  entry_t ;
typedef  int /*<<< orphan*/  black_list ;
struct TYPE_14__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_11__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_12__ {int /*<<< orphan*/ * next; TYPE_1__ b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* bl_head ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* buff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_7__ global_bayes ; 
 int /*<<< orphan*/  header ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int max_words ; 
 TYPE_2__* new_buff ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 () ; 
 TYPE_3__ user_table ; 
 TYPE_2__* users ; 
 scalar_t__ verbosity ; 

void FUNC10 (void) {
  if (verbosity) {
    while (FUNC9() != -1) {
    }

    FUNC8 (&global_bayes.cnt);
    int i;
    for (i = 0; i < user_table.size; i++) {
      FUNC8 (&users[i].b.cnt);
    }

    if (index_mode) {
      FUNC7 (buff, max_words * sizeof (entry_t));
      FUNC7 (new_buff, 4000000 * sizeof (entry_t));
    }

    while (bl_head->next != NULL) {
      FUNC1 (bl_head);
    }
    FUNC7 (bl_head, sizeof (black_list));

    FUNC7 (users, sizeof (user) * user_table.size);

    FUNC6 (&user_table);
    FUNC3 (&header);

    FUNC2 (stderr, "Memory left: %ld\n", FUNC4() - FUNC5());
    FUNC0 (FUNC4() - FUNC5() == 0);
  }
}