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
typedef  int /*<<< orphan*/  md5_hash_t ;

/* Variables and functions */
 long long HASH_FILE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 long long FUNC3 (int,scalar_t__,long long,long long) ; 
 scalar_t__ stats_buff ; 

int FUNC4 (int fd, long long file_size, md5_hash_t start_hash, md5_hash_t end_hash) {
  FUNC0 (fd > 0 && file_size >= 0);
  if (file_size <= HASH_FILE_BYTES) {
    FUNC0 (FUNC3 (fd, stats_buff, file_size, 0) == file_size);
    FUNC1 ((unsigned char *) stats_buff, file_size, start_hash);
    FUNC2 (end_hash, start_hash, sizeof (md5_hash_t));
  } else {
    FUNC0 (FUNC3 (fd, stats_buff, HASH_FILE_BYTES, 0) == HASH_FILE_BYTES);
    FUNC1 ((unsigned char *) stats_buff, HASH_FILE_BYTES, start_hash);
    FUNC0 (FUNC3 (fd, stats_buff, HASH_FILE_BYTES, file_size - HASH_FILE_BYTES) == HASH_FILE_BYTES);
    FUNC1 ((unsigned char *) stats_buff, HASH_FILE_BYTES, end_hash);
  }
  return 0;
}