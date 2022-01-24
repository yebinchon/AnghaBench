#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ proposal_hashes; scalar_t__ proposal; int /*<<< orphan*/  uid; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_proposal ; 
 scalar_t__ FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 

int FUNC7 (user_t *U, char *proposal, int len) {
  int i;
  FUNC1 (len <= 1023);
  FUNC1 ((!len && !proposal) || !proposal[len]);
  for (i = 0; i < len; i++) {
    FUNC1 ((unsigned char) proposal[i] >= ' ');
  }
  FUNC4 (U->proposal);
  FUNC2 (U->uid, U->proposal_hashes);

  if (len) {
    U->proposal = FUNC3 (proposal, len);
    FUNC5 ("anyproposal", 0, -1, 0, q_proposal);
    U->proposal_hashes = FUNC6 (U->proposal, -1, q_proposal);
    FUNC0 (U->uid, U->proposal_hashes);
  } else {
    U->proposal = 0;
    U->proposal_hashes = 0;
  }

  return 1;
}