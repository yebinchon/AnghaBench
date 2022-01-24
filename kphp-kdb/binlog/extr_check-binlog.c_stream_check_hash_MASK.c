#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kfs_file_info {TYPE_2__* khdr; int /*<<< orphan*/  filename; scalar_t__ start; } ;
struct TYPE_9__ {TYPE_1__* F; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_10__ {long long file_hash; } ;
typedef  TYPE_4__ kfs_binlog_zip_header_t ;
struct TYPE_8__ {long long file_id_hash; } ;
struct TYPE_7__ {struct kfs_file_info* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,long long,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,long long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,long long) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (stream_t *S, long long computed_file_hash, long long rotate_to_cur_log_hash) {
  if (computed_file_hash == rotate_to_cur_log_hash) {
    return;
  }
  if (FUNC3 (S)) {
    kfs_binlog_zip_header_t *H = (kfs_binlog_zip_header_t *) S->F->info->start;
    if (H->file_hash != rotate_to_cur_log_hash) {
      FUNC1 ("in %s '%s' zipped header file_hash field (0x%016llx) isn't equal to LEV_ROTATE_TO cur_log_hash field (0x%016llx).", FUNC4 (S->type), S->F->info->filename, H->file_hash, rotate_to_cur_log_hash);
    } else {
      FUNC2 ("in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). KFS header probably was truncated during packing.", FUNC4 (S->type), S->F->info->filename, computed_file_hash, rotate_to_cur_log_hash);
    }
  } else {
    struct kfs_file_info *FI = S->F->info;
    if (!FI->khdr) {
      FUNC0 ("in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). No KFS headers.", FUNC4 (S->type), S->F->info->filename, computed_file_hash, rotate_to_cur_log_hash);
    } else if (FI->khdr->file_id_hash != rotate_to_cur_log_hash) {
      FUNC0 ("in %s '%s' computed file hash (0x%016llx) isn't equal LEV_ROTATE_TO cur_log_hash field (0x%016llx). file_id_hash in KFS headers is equal to 0x%016llx.",
      FUNC4 (S->type), S->F->info->filename, computed_file_hash, rotate_to_cur_log_hash, FI->khdr->file_id_hash);
    }
  }
}