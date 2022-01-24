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
typedef  int /*<<< orphan*/  iCode_iterator ;

/* Variables and functions */
 int MAX_LIST_LEN_EXP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ ,unsigned char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char**,int*,int) ; 

int FUNC6 (int *P, int len, int tot_items, unsigned char *res) {
//  assert (len > 0);

  unsigned char *st = res;

  int skip = 8;
  res--;
  FUNC5 (len, &res, &skip, 1 << MAX_LIST_LEN_EXP);
  FUNC1 (P, len, tot_items, 0, &res, &skip);


  int i;
  iCode_iterator it;
  FUNC2 (&it, st, tot_items, res - st + 1, tot_items);

/*  for (i = 0; i < res - st + 1; i++)
    fprintf (stderr, "%x%c", (int)st[i], " \n"[i==res-st]);*/

  for (i = 0; i < len; i++) {
//    fprintf (stderr, "%d vs %d\n", iCode_iter_val (&it), P[i]);
    FUNC0 (FUNC4 (&it) == P[i]);
    FUNC3 (&it);
  }
  FUNC0 (FUNC4 (&it) == 0);

  return res - st + 1;
}