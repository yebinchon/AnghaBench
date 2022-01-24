#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msg_part {scalar_t__ refcnt; struct msg_part* next; TYPE_1__* part; } ;
struct TYPE_2__ {int refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct msg_part*) ; 

__attribute__((used)) static int FUNC3 (struct msg_part *mp) {
  struct msg_part *mpn;
  int cnt = 0;
  while (mp) {
    if (--mp->refcnt) {
      FUNC0 (mp->refcnt > 0);
      break;
    }
    int buffer_refcnt = --mp->part->refcnt;
    if (!buffer_refcnt) {
      FUNC1 (mp->part);
      cnt++;
    } else {
      FUNC0 (buffer_refcnt > 0);
    }
    mpn = mp->next;
    mp->part = 0;
    mp->next = 0;
    FUNC2 (mp); // for now, msg_part is always malloc'd
    mp = mpn;
  }
  return cnt;
}