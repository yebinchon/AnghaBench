#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int user_id; int date; int tag; int user; int group; int owner; int place; int item; struct TYPE_3__* gnext; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int TL_NEWS_FLAG_DATE ; 
 int TL_NEWS_FLAG_GROUP ; 
 int TL_NEWS_FLAG_ITEM ; 
 int TL_NEWS_FLAG_OWNER ; 
 int TL_NEWS_FLAG_PLACE ; 
 int TL_NEWS_FLAG_TAG ; 
 int TL_NEWS_FLAG_TYPE ; 
 int TL_NEWS_FLAG_USER ; 
 int TL_NEWS_FLAG_USER_ID ; 
 int* TypeFlags ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (item_t *A, int grouping, int ug_mode) {
  item_t *B;
  int t = A->type;
  FUNC0 (t >= 0 && t < 32);
  int i;

  if (!A->gnext) {
    int flags = TL_NEWS_FLAG_TYPE | ((ug_mode <= 0) ? TL_NEWS_FLAG_USER_ID : 0) | TL_NEWS_FLAG_DATE | TL_NEWS_FLAG_TAG | TL_NEWS_FLAG_USER | TL_NEWS_FLAG_GROUP | TL_NEWS_FLAG_OWNER | TL_NEWS_FLAG_PLACE | TL_NEWS_FLAG_ITEM;
    FUNC2 (flags);
    FUNC2 (1);
    FUNC2 (1);
    FUNC2 (A->type);
    if (ug_mode <= 0) {
      FUNC2 (A->user_id);
    }
    FUNC2 (A->date);
    FUNC2 (A->tag);
    FUNC2 (A->user);
    FUNC2 (A->group);
    FUNC2 (A->owner);
    FUNC2 (A->place);
    FUNC2 (A->item);
    return 1;
  }
  int n = 0;
  for (B = A; B; B = B->gnext) {
    n ++;
  }

  int *flags = FUNC1 (4);
  FUNC2 (n);
  if (n > grouping) { n = grouping; }
  FUNC2 (n);

  *flags = TL_NEWS_FLAG_TYPE | TL_NEWS_FLAG_DATE | TL_NEWS_FLAG_TAG;
  FUNC2 (A->type);
  if (ug_mode <= 0) {
    if (TypeFlags[t] & 4) {
      *flags |= TL_NEWS_FLAG_USER_ID;
      FUNC2 (A->user_id);
    } else {
      *flags |= 2 * TL_NEWS_FLAG_USER_ID;
      for (B = A, i = 0; i < n; B = B->gnext, i ++) {
        FUNC2 (B->user_id);
      }
    }
  }

  FUNC2 (A->date);
  FUNC2 (A->tag);

  *flags |= (2 * TL_NEWS_FLAG_USER);
  for (B = A, i = 0; i < n; B = B->gnext, i ++) {
    FUNC2 (B->user);
  }

  *flags |= (2 * TL_NEWS_FLAG_GROUP);
  for (B = A, i = 0; i < n; B = B->gnext, i ++) {
    FUNC2 (B->group);
  }

  if (TypeFlags[t] & 1) {
    *flags |= TL_NEWS_FLAG_OWNER;
    FUNC2 (A->owner);
  } else {
    *flags |= (2 * TL_NEWS_FLAG_OWNER);
    for (B = A, i = 0; i < n; B = B->gnext, i ++) {
      FUNC2 (B->owner);
    }
  }

  if (TypeFlags[t] & 2) {
    *flags |= TL_NEWS_FLAG_PLACE;
    FUNC2 (A->place);
  } else {
    *flags |= (2 * TL_NEWS_FLAG_PLACE);
    for (B = A, i = 0; i < n; B = B->gnext, i ++) {
      FUNC2 (B->place);
    }
  }

  if (TypeFlags[t] & 8) {
    *flags |= TL_NEWS_FLAG_ITEM;
    FUNC2 (A->item);
  } else {
    *flags |= (2 * TL_NEWS_FLAG_ITEM);
    for (B = A, i = 0; i < n; B = B->gnext, i ++) {
      FUNC2 (B->item);
    }
  }
  return 1;
}