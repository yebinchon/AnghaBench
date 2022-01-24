#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int prev_user_creations; } ;
typedef  TYPE_1__ user_t ;
struct advert {int* user_list; int ad_id; int prev_user_creations; int users; scalar_t__ flags; } ;

/* Variables and functions */
 scalar_t__ ADF_ON ; 
 TYPE_1__** User ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3 (struct advert *A, int old_users, int *old_user_list, int old_prev_user_creations) {
  FUNC1 (A && (A->flags && ADF_ON) && A->user_list);
  int ad_id = A->ad_id, prev_user_creations = A->prev_user_creations;
  int *p = A->user_list, *q = old_user_list;
  int x = *p++, y = *q++;
  user_t *U;
  while (1) {
    if (x < y) {
      U = User[x];
      if (U && U->prev_user_creations <= prev_user_creations) {
	FUNC0 (U, ad_id);
      }
      x = *p++;
    } else if (x > y) {
      U = User[y];
      if (U) {
	FUNC2 (U, ad_id);
      }
      y = *q++;
    } else if (x == 0x7fffffff) {
      break;
    } else {
      U = User[x];
      if (U && U->prev_user_creations > old_prev_user_creations && U->prev_user_creations <= prev_user_creations) {
	FUNC0 (U, ad_id);
      }
      x = *p++;
      y = *q++;
    }
  }
  FUNC1 (q == old_user_list + old_users + 1 && p == A->user_list + A->users + 1);
}