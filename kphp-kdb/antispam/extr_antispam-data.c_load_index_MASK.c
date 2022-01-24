#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * kfs_file_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_pos1; int /*<<< orphan*/  log_timestamp; } ;
typedef  TYPE_1__ index_header ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int verbosity ; 

__attribute__((used)) static bool FUNC2 (kfs_file_handle_t Index) {
  if (verbosity >= 2) {
    FUNC1 ("$1load_index: $2started (%s)...$^\n", (Index == NULL ? "Index == 0" : "Index != 0"));
  }

  index_header header;
  if (!FUNC0 (Index, &header)) {
    return FALSE;
  }

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  if (verbosity >= 2) {
    FUNC1 ("$1load_index: $2%sloaded!$^\n", (Index == NULL ? "empty index " : ""));
  }

  return TRUE;
}