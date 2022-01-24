#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  utree_t ;
struct TYPE_9__ {int rate; int uid; int user_id; int privacy; int cartesian_y; scalar_t__ prev_user_creations; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_10__ {int /*<<< orphan*/ * uplink; } ;

/* Variables and functions */
 TYPE_1__** User ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int max_uid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* rate_tree ; 
 int /*<<< orphan*/  tot_users ; 
 scalar_t__ user_creations ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 

user_t *FUNC5 (int user_id) {
  int i = FUNC0 (user_id);
  user_t *U;
  if (i < 0) { return 0; }
  U = User[i];
  if (U) { return U; }
  U = FUNC4 (sizeof (user_t));
  FUNC2 (U, 0, sizeof(user_t));
  U->rate = (FUNC1 () & 255) - 256;
  U->uid = i;
  U->user_id = user_id;
  U->privacy = 1;
  U->prev_user_creations = ++user_creations;
  User[i] = U;
  if (i > max_uid) { max_uid = i; }
  tot_users++;
  //by KOTEHOK 2010-04-24
  U->cartesian_y = FUNC1 ();
  rate_tree = FUNC3 (rate_tree, (utree_t *)U);
  rate_tree->uplink = (utree_t *)&rate_tree;
  //end KOTEHOK 2010-04-24
  return U;
}