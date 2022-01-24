#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct repl_client_status {scalar_t__ unflushed_bytes; double last_flush_time; struct related_binlog* rb; } ;
struct related_binlog {TYPE_2__* kfs_binlog; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd; TYPE_1__* info; } ;
struct TYPE_3__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ MAX_CLIENT_UNFLUSHED_BYTES ; 
 double MAX_FLUSH_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tot_unflushed_bytes ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4 (struct repl_client_status *C) {
  double p_now = FUNC2 (CLOCK_MONOTONIC);
  if (C->unflushed_bytes >= MAX_CLIENT_UNFLUSHED_BYTES || (C->unflushed_bytes && p_now > C->last_flush_time + MAX_FLUSH_INTERVAL)) {
    struct related_binlog *R = C->rb;
    FUNC3 (2, "%lld unflushed bytes pending in binlog slice %s, syncing...\n", C->unflushed_bytes, R->kfs_binlog->info->filename);
    FUNC0 (FUNC1 (R->kfs_binlog->fd) >= 0);
    tot_unflushed_bytes -= C->unflushed_bytes;
    C->unflushed_bytes = 0;
    C->last_flush_time = p_now;
    return 1;
  }
  return 0;
}