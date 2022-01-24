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
typedef  int /*<<< orphan*/  index_header ;
struct TYPE_2__ {int priv_mask; int user_id; } ;

/* Variables and functions */
 int MAX_USERS ; 
 TYPE_1__** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int log_split_min ; 
 int log_split_mod ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4 (index_header *header) {
  FUNC1 ();
  int i;
  for (i = 0; i < MAX_USERS; i++) if (User[i] && User[i]->priv_mask != 1) {
    FUNC3 (User[i]->user_id * log_split_mod + log_split_min);
    FUNC3 (User[i]->priv_mask);
    FUNC0 (User[i]->priv_mask & 1);
  }
  FUNC2 ();
}