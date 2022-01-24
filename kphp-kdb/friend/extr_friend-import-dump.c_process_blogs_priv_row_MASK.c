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

/* Variables and functions */
 scalar_t__* I ; 
 scalar_t__ PK_note ; 
 scalar_t__ PK_notecomm ; 
 int /*<<< orphan*/  adj_rec ; 
 size_t bp_comment_privacy ; 
 size_t bp_id ; 
 size_t bp_user_id ; 
 size_t bp_view_privacy ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,char*) ; 
 scalar_t__ user_id ; 

void FUNC2 (void) {
  user_id = I[bp_user_id];
  int uid = FUNC0 (user_id);

  if (uid < 0 || user_id <= 0 || I[bp_id] <= 0) {
    return;
  }

  FUNC1 (PK_note+I[bp_id], I[bp_view_privacy], "*A*G*0*A/A");
  FUNC1 (PK_notecomm+I[bp_id], I[bp_comment_privacy], "*A*G*0*A/A");

  adj_rec++;
}