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
struct fwd_entry {int flags; int /*<<< orphan*/  target; struct fwd_entry* fwd_next; } ;

/* Variables and functions */
 int FE_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwd_entry*,int) ; 

void FUNC2 (struct fwd_entry *FE) {
  while (FE) {
    struct fwd_entry *FN = FE->fwd_next;
    if (FE->flags & FE_HOSTNAME) {
      FUNC0 (FE->target);
    }
    FUNC1 (FE, sizeof (struct fwd_entry));
    FE = FN;
  }
}