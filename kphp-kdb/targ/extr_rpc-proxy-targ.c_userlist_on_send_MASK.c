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
struct gather {int dummy; } ;

/* Variables and functions */
 int* Q ; 
 int /*<<< orphan*/  QBefore ; 
 int /*<<< orphan*/  QBeforeSize ; 
 int* QN ; 
 int /*<<< orphan*/  Q_userlist ; 
 int* Qf ; 
 int* Qs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct gather*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 (struct gather *G, int n) {
  if (!Q_userlist) {
    return FUNC1 (G, n);
  } else {
    if (!Qs[n]) {
      return -1;
    } else {
      FUNC5 (QBefore, QBeforeSize);
      int m = Qf[n];
      int cc = 0;
      FUNC4 (Qs[n]);
      while (m != -1) {
        FUNC4 (Q[m]);
        m = QN[m];
        cc ++;
      }
      FUNC0 (cc == Qs[n]);
      FUNC2 (FUNC3 (), 0);
      return 0;
    }
  }
}