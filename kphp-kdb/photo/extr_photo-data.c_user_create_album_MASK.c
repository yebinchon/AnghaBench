#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  current_album_id; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 scalar_t__ MAX_ALBUMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC4 (user *u) {
//  dbg ("user_create_album %d\n", u->id);

  if (write_only) {
    return u->current_album_id++;
  }

  FUNC0 (FUNC3 (u));

  if (FUNC2 (u) >= MAX_ALBUMS) {
    u->current_album_id++;
    return 0;
  }

//  dbg ("create_album (user = %d)\n", u->id);

  if (!FUNC1 (u, u->current_album_id)) {
    u->current_album_id++;
    return 0;
  }
  return u->current_album_id++;
}