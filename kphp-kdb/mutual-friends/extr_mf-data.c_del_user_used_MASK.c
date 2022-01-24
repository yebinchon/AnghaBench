#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* next_used; TYPE_1__* prev_used; } ;
typedef  TYPE_3__ user ;
struct TYPE_7__ {TYPE_1__* prev_used; } ;
struct TYPE_6__ {TYPE_2__* next_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  user_table ; 
 TYPE_3__* users ; 
 int verbosity ; 

void FUNC4 (user *u) {
  if (verbosity > 3) {
    char tmp[100];
    FUNC3 (tmp, "?(-%d)", FUNC2 (&user_table, (int)(u - users)));
    FUNC1 (tmp, -FUNC2 (&user_table, (int)(u - users)));
  }
  FUNC0 (u->prev_used != NULL);
  FUNC0 (u->next_used != NULL);

  u->next_used->prev_used = u->prev_used;
  u->prev_used->next_used = u->next_used;

  u->prev_used = NULL;
  u->next_used = NULL;
  if (verbosity > 3) {
    FUNC1 ("!", 0);
  }
}