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
struct TYPE_2__ {int user_id; } ;
struct imessage_long {TYPE_1__ builtin_msg; } ;
struct imessage {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct imessage*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imessage_long*,int,int) ; 

int FUNC2 (struct imessage_long *M, int user_id, int local_id, int max_text_len, int fetch_filter) {
  int r = FUNC0 ((struct imessage *) M, user_id, local_id, 1);
  if (r <= 0) {
    return r;
  }
  M->builtin_msg.user_id = user_id;
  FUNC1 (M, max_text_len, fetch_filter);

  return r;
}