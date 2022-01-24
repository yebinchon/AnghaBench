#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fr_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_6__ {int cat; } ;
typedef  TYPE_2__ tree_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2 (int user_id, int friend_id) {
  user_t *U = FUNC0 (user_id);
  if (!U || friend_id <= 0) {
    return -1;
  }
  tree_t *N = FUNC1 (U->fr_tree, friend_id);
  return N ? N->cat : -1;
}