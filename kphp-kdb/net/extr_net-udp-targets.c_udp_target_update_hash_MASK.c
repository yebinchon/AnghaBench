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
struct udp_target {int generation; int /*<<< orphan*/  hash; int /*<<< orphan*/  PID; } ;

/* Variables and functions */
 int /*<<< orphan*/  PID ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct udp_target*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct udp_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udp_target_by_hash ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC7 (struct udp_target *S) {
  static int P[7];
  int x = FUNC2 (&PID, &S->PID, 12);
  if (x < 0) {
    FUNC3 (P, &PID, 12);
    FUNC3 (P + 3, &S->PID, 12);
  } else {
    FUNC3 (P, &S->PID, 12);
    FUNC3 (P + 3, &PID, 12);
  }
  P[6] = S->generation;
  if (S->hash) {
    FUNC6 (2, "delete: hash = %lld\n", S->hash);
    udp_target_by_hash  = FUNC4 (udp_target_by_hash, S);
  }
  S->hash = FUNC0 (P, 28);
  FUNC6 (2, "insert: hash = %lld\n", S->hash);
  udp_target_by_hash = FUNC5 (udp_target_by_hash, S, FUNC1 ());
}