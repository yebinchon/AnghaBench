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
struct TYPE_2__ {int node_id; int server_id; int disk_id; } ;
union cache_packed_local_copy_location {int /*<<< orphan*/  i; TYPE_1__ p; } ;
struct lev_cache_change_disk_status {int dummy; } ;

/* Variables and functions */
 scalar_t__ LEV_CACHE_CHANGE_DISK_STATUS ; 
 struct lev_cache_change_disk_status* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lev_cache_change_disk_status*,int) ; 
 int FUNC3 (int,int,int) ; 

int FUNC4 (int node_id, int server_id, int disk_id, int enable) {
  FUNC1 (enable == 0 || enable == 1);
  int r = FUNC3 (node_id, server_id, disk_id);
  if (r < 0) {
    return r;
  }
  union cache_packed_local_copy_location u;
  u.p.node_id = node_id;
  u.p.server_id = server_id;
  u.p.disk_id = disk_id;
  struct lev_cache_change_disk_status *E = FUNC0 (LEV_CACHE_CHANGE_DISK_STATUS + enable, sizeof (*E), u.i);
  return FUNC2 (E, enable);
}