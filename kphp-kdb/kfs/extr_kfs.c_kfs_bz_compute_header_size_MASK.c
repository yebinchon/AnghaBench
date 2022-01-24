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
typedef  int /*<<< orphan*/  kfs_binlog_zip_header_t ;

/* Variables and functions */
 int FUNC0 (long long) ; 

int FUNC1 (long long orig_file_size) {
  int chunks = FUNC0 (orig_file_size);
  return sizeof (kfs_binlog_zip_header_t) + 8 * chunks + 4;
}