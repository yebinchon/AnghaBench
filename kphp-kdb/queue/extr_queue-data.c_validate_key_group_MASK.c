#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__** k; int /*<<< orphan*/ * r; } ;
typedef  TYPE_1__ qkey_group ;
struct TYPE_6__ {int /*<<< orphan*/  subscribed; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int KEY_LEN ; 
 int /*<<< orphan*/  LOG_WARNINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (char*,int,int,int,int,int /*<<< orphan*/ *) ; 

qkey_group *FUNC6 (char *keys, int id, int ip, int *req_ts, int req_ts_n, int a_release) {
  int kn = FUNC4 (keys);
  if (kn % KEY_LEN) {
    FUNC0 (LOG_WARNINGS, 1, "Failed : 2. kn %% KEY_LEN : %d %% %d\n", kn, KEY_LEN);
    return NULL;
  }
  kn /= KEY_LEN;
  if (kn != req_ts_n || kn <= 0) {
    FUNC0 (LOG_WARNINGS, 1, "Failed : 2. kn != req_ts_n || kn <= 0 : %d != %d || %d <= 0\n", kn, req_ts_n, kn);
    return NULL;
  }

  int i, j;
  for (i = 0; i < kn; i++) {
    for (j = i + 1; j < kn; j++) {
      if (!FUNC2 (keys + KEY_LEN * i, keys + KEY_LEN * j, KEY_LEN)) {
        FUNC0 (LOG_WARNINGS, 1, "Failed : 2. Key %d == key %d\n", i, j);
      }
    }
  }

  qkey_group *r = FUNC3 (kn);
  for (i = 0; i < kn; i++) {
    r->k[i] = FUNC5 (keys + KEY_LEN * i, id, ip, req_ts[i], a_release, &r->r[i]);

    /*
    if (r->k[i] == NULL && !a_release) {
      qkey_group_free (r);
      return NULL;
    }
   */

    if (r->k[i] != NULL && !r->k[i]->lock) {
      r->k[i]->subscribed = FUNC1 (CLOCK_MONOTONIC);
    }
  }

  return r;
}