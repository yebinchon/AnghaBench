#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {long long id; size_t priority; scalar_t__ drive_l; struct TYPE_11__* l; TYPE_2__* next; TYPE_1__* prev; } ;
typedef  TYPE_3__ temp_letter ;
struct TYPE_12__ {scalar_t__ drive_l; int drive_old_mx; scalar_t__ drive_mx; } ;
typedef  TYPE_4__ one_header ;
struct TYPE_13__ {TYPE_4__* data; } ;
struct TYPE_10__ {TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * drive_l_to_letter ; 
 int FUNC2 (TYPE_3__*) ; 
 TYPE_6__ header ; 
 int /*<<< orphan*/  id_to_letter ; 
 int /*<<< orphan*/ ** letter_stat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void** FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

int FUNC6 (long long id) {
  void **ptr = FUNC4 (&id_to_letter, id);
  if (ptr != NULL) {
    temp_letter *l = (temp_letter *)*ptr;
    FUNC0 (l != NULL);
    FUNC0 (l->id == id);

    FUNC3 (&id_to_letter, l->id);

    l->prev->next = l->next;
    l->next->prev = l->prev;
    l->prev = NULL;
    l->next = NULL;

    one_header *data = &header.data[l->priority];
    while (l != NULL && data->drive_l == l->drive_l && l->next == NULL) {
      int size = FUNC2 (l->l);

      data->drive_l += size - sizeof (long long);
//      if (header.data->drive_l >= data->drive_old_mx) {
      if (data->drive_l >= data->drive_old_mx) {
        data->drive_l -= data->drive_old_mx;
        if (data->drive_old_mx < data->drive_mx) {
          FUNC5 (data);
        }
      }

      int pr = l->priority;
      letter_stat[pr][1]++;
      letter_stat[pr][2]--;
      FUNC3 (&drive_l_to_letter[pr], l->drive_l + 1);
      FUNC1 (l->l, size);
      FUNC1 (l, sizeof (temp_letter));

      ptr = FUNC4 (&drive_l_to_letter[pr], data->drive_l + 1);
      if (ptr != NULL) {
        l = (temp_letter *)*ptr;
      } else {
        l = NULL;
      }
    }
    return 1;
  }
  return 0;
}