#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  q_info ;
struct TYPE_4__ {long long x; scalar_t__ y; } ;
typedef  TYPE_1__ hmap_pair_ll_int ;
struct TYPE_5__ {int y; } ;

/* Variables and functions */
 scalar_t__ H_ADD ; 
 long long H_MUL ; 
 int STAT_ST ; 
 int* FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  h_q ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int* q_entry ; 
 int* q_rev ; 
 int qn ; 
 int qr ; 

int FUNC3 (int val) {
  long long h = val;
  h += H_ADD;
  h *= H_MUL;
  hmap_pair_ll_int tmp;
  tmp.x = h;
  tmp.y = 0;
  int *pid = &(FUNC1 (&h_q, tmp)->y);
  if (*pid == 0) {
    if (qn + 3 > qr) {
      int nqr = qr * 2 + 3;
      q_entry = FUNC0 (q_entry, sizeof (q_info) * (nqr + STAT_ST), sizeof (q_info) * (qr + STAT_ST));
      q_rev = FUNC0 (q_rev, sizeof (int) * nqr, sizeof (int) * qr);

      FUNC2 (q_entry + qr + STAT_ST, 0, sizeof (q_info) * (nqr - qr));
      FUNC2 (q_rev + qr, 0, sizeof (int) * (nqr - qr));

      qr = nqr;
    }

    *pid = ++qn;
    q_rev[qn] = val;
//    memset (&q_entry[qn + STAT_ST], 0, sizeof (q_entry[qn + STAT_ST]));
  }

  return *pid;
}