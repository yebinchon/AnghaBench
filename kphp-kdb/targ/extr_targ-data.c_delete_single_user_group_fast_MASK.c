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
struct user_groups {int cur_groups; int* G; } ;
struct user {struct user_groups* grp; } ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 struct user** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  q_grp_id ; 
 int /*<<< orphan*/  user_group_pairs ; 

__attribute__((used)) static void FUNC4 (int uid, int group_id) {
  FUNC0 ((unsigned)uid < MAX_USERS);
  struct user *U = User[uid];
  FUNC0 (U && U->grp);
  
  struct user_groups *G = U->grp;
  int l = -1, r = G->cur_groups;
  while (r - l > 1) {
    int m = (l + r) >> 1;
    if (group_id < G->G[m]) {
      r = m;
    } else {
      l = m;
    }
  }
  
  FUNC0 (l >= 0 && G->G[l] == group_id);
  FUNC3 (G->G + l, G->G + (l + 1), (G->cur_groups - l - 1) * 4);
  
  G->cur_groups--;

  FUNC1 (uid, FUNC2 (q_grp_id, group_id));
  user_group_pairs--;
}