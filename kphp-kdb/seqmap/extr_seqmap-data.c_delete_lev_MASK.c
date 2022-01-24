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
struct lev_seq_delete {int type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int LEV_SEQ_DELETE ; 
 int FUNC0 (int,struct lev_seq_delete*,int,int /*<<< orphan*/ ) ; 

int FUNC1 (struct lev_seq_delete *E) {
  int key_len = (E->type - LEV_SEQ_DELETE) & 0xff;
  return FUNC0 (sizeof (*E) + key_len * 4, E, key_len, E->data);
}