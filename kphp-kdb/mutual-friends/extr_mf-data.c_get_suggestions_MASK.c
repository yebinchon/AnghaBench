#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  root; } ;
struct TYPE_12__ {TYPE_1__ sugg; } ;
typedef  TYPE_2__ user ;
struct TYPE_13__ {int y; int x; int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;
typedef  TYPE_3__ trp_node ;

/* Variables and functions */
 int MAX_CNT ; 
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ heap_size ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

int FUNC10 (int uid, int mx_cnt, int min_common, int *res) {
  user *u = FUNC1 (uid);
  int local_id = FUNC7 (uid);

  if (mx_cnt > MAX_CNT) {
    mx_cnt = MAX_CNT;
  }

  if (u == NULL) {
    res[0] = 0;
    return 0;
  }

  min_common *= 4;
  if (min_common < 4) {
    min_common = 4;
  }

  FUNC6 (u, local_id, NOAIO);

//  fprintf (stderr, "after load_user_metafile. u->metafile_len = %d\n", u->metafile_len);

  if (!FUNC9 (u)) {
    return -2;
  }

  FUNC2 (u);
  FUNC0 (u);

  FUNC5 ();
  int n = 0;

  FUNC3 (u->sugg.root);
  while (heap_size && mx_cnt) {
    trp_node *v = FUNC4();

    if ((v->y >> 16) < min_common) {
      //TODO: comment for testing
      break;
    }

    if (!FUNC8 (u, v->x)) {
      res[n * 2 + 1] = v->x;
      res[n * 2 + 2] = v->y >> 16;
      n++;

      mx_cnt--;
    }
    FUNC3 (v->l);
    FUNC3 (v->r);
  }

  res[0] = n;

  return 1;
}