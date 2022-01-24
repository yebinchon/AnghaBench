#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fr_cnt; int /*<<< orphan*/  fr_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_5__ {int /*<<< orphan*/  date; int /*<<< orphan*/  cat; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 TYPE_3__** H ; 
 int HN ; 
 int /*<<< orphan*/ * R ; 
 int /*<<< orphan*/ * R_end ; 
 int R_max ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (int user_id, int num) {
  user_t *U = FUNC1 (user_id);
  if (!U || num <= 0 || num > 1000) {
    return -1;
  }
  R_max = num;
  HN = 0;

  FUNC2 (U->fr_tree);
  FUNC0 ();

  R_end = R;
  int i;
  for (i = 0; i < HN; i++) {
    R_end[0] = H[i]->x;
    R_end[1] = H[i]->cat;
    R_end[2] = H[i]->date;
    R_end += 3;
  }

  return U->fr_cnt;
}