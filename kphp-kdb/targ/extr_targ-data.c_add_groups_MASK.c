#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int user_id; struct user_groups* grp; } ;
typedef  TYPE_1__ user_t ;
struct user_groups {int cur_groups; int tot_groups; int* G; } ;

/* Variables and functions */
 int MAX_USER_GROUPS ; 
 int MIN_USER_GROUPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct user_groups*,struct user_groups*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct user_groups*,int) ; 
 struct user_groups* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (user_t *U, int List[], int len) {
  struct user_groups *G = U->grp;

  if (len < 0 || len > MAX_USER_GROUPS) {
    return -1;
  }
  if (!len || (G && G->cur_groups >= MAX_USER_GROUPS)) {
    return 0;
  }

  int i, j, c = 0;
  for (i = 1; i < len; i++) {
    if (List[i-1] >= List[i]) {
      FUNC2 (stderr, "add_groups: user_id=%d, len=%d,", U->user_id, len);
      int j;
      for (j = 0; j < len; j++) {
        FUNC2 (stderr, " %d", List[j]);
      }
      FUNC2 (stderr, ".\n");
    }
    FUNC1 (List[i-1] < List[i]);
  }

  if (G) {
    FUNC1 (G->cur_groups >= 0 && G->cur_groups <= G->tot_groups);
    i = j = 0;
    while (i < len && j < G->cur_groups) {
      if (List[i] < G->G[j]) { i++; }
      else if (List[i] > G->G[j]) { j++; }
      else { c++;  i++;  j++; }
    }
    int t = G->cur_groups + len - c, tt = G->tot_groups;
    if (t > tt) {
      while (t > tt) { tt <<= 1; }
      struct user_groups *GN = FUNC5 (sizeof (struct user_groups) + 4*tt);
      FUNC3 (GN, G, sizeof(struct user_groups) + 4*G->cur_groups);
      FUNC4 (G, sizeof (struct user_groups) + 4*G->tot_groups);
      U->grp = G = GN;
      G->tot_groups = tt;
    }

    i = len-1;
    j = G->cur_groups-1;
    G->cur_groups = t;

    while (i >= 0 && j >= 0) {
      FUNC1 (t > 0);
      if (List[i] > G->G[j]) {
        G->G[--t] = List[i];
        FUNC0 (U, List[i--]);
      } else {
        if (List[i] == G->G[j]) {
          i--;
        }
        G->G[--t] = G->G[j--];
      }
    }
    while (i >= 0) {
      FUNC1 (t > 0);
      G->G[--t] = List[i];
      FUNC0 (U, List[i--]);
    }
    while (j >= 0) {
      FUNC1 (t > 0);
      G->G[--t] = G->G[j--];
    }
    FUNC1 (!t);
    return len - c;
  }

  int tt = MIN_USER_GROUPS;
  while (tt < len) { tt <<= 1; }
  
  U->grp = G = FUNC5 (sizeof (struct user_groups) + 4*tt);
  G->cur_groups = len;
  G->tot_groups = tt;
  
  for (i = 0; i < len; i++) {
    G->G[i] = List[i];
    FUNC0 (U, List[i]);
  }

  return len;
}