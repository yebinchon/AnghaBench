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
struct lev_photo_increm_data {int user_id; int data_id; int cnt; } ;

/* Variables and functions */
 int MAX_FIELDS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lev_photo_increm_data* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  increm_data ; 
 int mode ; 

int FUNC3 (int uid, int did, int field_id, int cnt, int type) {
  FUNC2 (0 <= field_id && field_id < MAX_FIELDS);

#if MAX_FIELDS >= 255
#  error Wrong MAX_FIELDS
#endif

  int size = sizeof (struct lev_photo_increm_data);
  struct lev_photo_increm_data *E =
    FUNC1 (type + (mode << 16) + field_id, size, uid);

  E->user_id = uid;
  E->data_id = did;
  E->cnt = cnt;

  return FUNC0 (increm_data, 0);
}