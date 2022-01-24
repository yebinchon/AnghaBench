#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* kfs_file_handle_t ;
struct TYPE_5__ {TYPE_1__* info; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int RPC_PROXY_INDEX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ifd ; 
 int jump_log_crc32 ; 
 long long jump_log_pos ; 
 int jump_log_ts ; 
 scalar_t__ FUNC4 (char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (scalar_t__,int*,int) ; 

void FUNC8 (kfs_file_handle_t index, const char *bname) {
  static int t[5];
  if (!index) {
    if (!binlog_disabled) {
      static char buf[1000];
      FUNC6 (buf, 1000, "%s.000000", bname);
      ifd = FUNC4 (buf, O_WRONLY | O_TRUNC | O_CREAT, 0660);
      if (ifd < 0) {
        FUNC3 (stderr, "Error opening index: %m\n");
        FUNC2 (1);
      }
      t[0] = RPC_PROXY_INDEX_MAGIC;
      t[1] = 0;
      t[2] = 0;
      t[3] = 0;
      t[4] = 0;
      FUNC0 (FUNC7 (ifd, t, 20) == 20);
    }
    return;
  }
  FUNC0 (FUNC5 (index->fd, t, 20) == 20);
  if (t[0] != RPC_PROXY_INDEX_MAGIC) {
    FUNC3 (stderr, "Index is not from rpc-proxy\n");
    FUNC2 (3);
  }
  jump_log_pos = *(long long *)(t + 1);
  jump_log_crc32 = t[3];
  jump_log_ts = t[4];
  FUNC1 (index->fd);
  if (!binlog_disabled) {
    ifd = FUNC4 (index->info->filename, O_WRONLY);
  }
}