#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  orig_file_size; } ;
typedef  TYPE_2__ kfs_binlog_zip_header_t ;
struct TYPE_7__ {TYPE_1__* info; int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  file_size; scalar_t__ start; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_3__* Binlog ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int binlog_zipped ; 
 int /*<<< orphan*/  binlogname ; 
 int /*<<< orphan*/  FUNC1 (long long,int,unsigned int) ; 
 scalar_t__ log_start_pos ; 
 scalar_t__ max_binlog_size ; 
 scalar_t__ next_binlog_rotate_pos ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 (long long new_log_pos, int log_timestamp, unsigned log_crc32) {
  FUNC0 (Binlog);
  binlog_zipped = Binlog->info->flags & 16;
  binlogname = Binlog->info->filename;
  FUNC2 (Binlog->fd, binlog_zipped ? ((kfs_binlog_zip_header_t *) Binlog->info->start)->orig_file_size : Binlog->info->file_size);
  FUNC1 (new_log_pos, log_timestamp, log_crc32);
  next_binlog_rotate_pos = log_start_pos + max_binlog_size;
}