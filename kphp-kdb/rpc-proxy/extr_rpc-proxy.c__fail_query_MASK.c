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
struct process_id {int dummy; } ;
typedef  enum tl_type { ____Placeholder_tl_type } tl_type ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct process_id*,long long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (enum tl_type type, struct process_id *PID, long long qid) {
  if (PID) {
    if (FUNC2 (type, PID, qid) >= 0) {
      if (!FUNC0 ()) {
        FUNC1 ("Unknown error", TL_ERROR_UNKNOWN);
      }
      FUNC3 ();
    }
  }
}