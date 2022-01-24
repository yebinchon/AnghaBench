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
typedef  int /*<<< orphan*/  tdata ;
struct TYPE_4__ {long long x; scalar_t__ y; } ;
typedef  TYPE_1__ hmap_pair_ll_int ;
struct TYPE_5__ {int y; } ;

/* Variables and functions */
 scalar_t__ H_ADD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  h_word ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int wordn ; 
 int wordr ; 
 int /*<<< orphan*/ * words ; 

int FUNC3 (long long h) {
  h += H_ADD;
  hmap_pair_ll_int tmp;
  tmp.x = h;
  tmp.y = 0;
  int *pid = &(FUNC1 (&h_word, tmp)->y);

  if (wordn + 3 > wordr) {
    int nwordr = wordr * 2 + 3;
    words = FUNC0 (words, sizeof (tdata) * nwordr, sizeof (tdata) * wordr);
    wordr = nwordr;
  }

  if (*pid == 0) {
    *pid = ++wordn;
    FUNC2 (words[wordn], 0, sizeof (tdata));
  }

  return *pid;
}