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
struct msg_part {int refcnt; scalar_t__ len; scalar_t__ offset; struct msg_buffer* part; scalar_t__ next; } ;
struct msg_buffer {int dummy; } ;

/* Variables and functions */
 struct msg_part* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct msg_part*) ; 
 int /*<<< orphan*/  rwm_total_msg_parts ; 

struct msg_part *FUNC2 (struct msg_part *neighbor, struct msg_buffer *X) {
  struct msg_part *mp = FUNC0 ();
  rwm_total_msg_parts ++;
  FUNC1 (mp);
  mp->refcnt = 1;
  mp->next = 0;
  mp->part = X;
  mp->offset = 0;
  mp->len = 0;
  return mp;
}