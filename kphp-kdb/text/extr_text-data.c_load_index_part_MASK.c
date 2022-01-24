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
struct iovec {unsigned int* iov_base; long long iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (void*,long long) ; 
 scalar_t__ dyn_cur ; 
 scalar_t__ dyn_top ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,long long,unsigned int,...) ; 
 int idx_crc_enabled ; 
 int /*<<< orphan*/  idx_fd ; 
 long long idx_fsize ; 
 int idx_loaded_bytes ; 
 long long FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC5 (long long) ; 

void *FUNC6 (void *data, long long offset, long long size, int max_size) {
  int r;
  static struct iovec io_req[2];
  static unsigned index_part_crc32;
  FUNC0 (size >= 0 && size <= (long long) (dyn_top - dyn_cur));
  FUNC0 (size <= max_size || !max_size);
  FUNC0 (offset >= 0 && offset <= idx_fsize && offset + size <= idx_fsize);
  if (!data) {
    data = FUNC5 (size);
  }
  FUNC0 (FUNC3 (idx_fd, offset, SEEK_SET) == offset);
  io_req[0].iov_base = data;
  io_req[0].iov_len = size;
  io_req[1].iov_base = &index_part_crc32;
  io_req[1].iov_len = 4;
  r = FUNC4 (idx_fd, io_req, 1 + idx_crc_enabled);
  size += idx_crc_enabled * 4;
  if (r != size) {
    FUNC2 (stderr, "error reading data from index file: read %lld bytes instead of %lld at position %u: %m\n", r, size, offset);
    FUNC0 (r == size);
    return 0;
  }
  if (idx_crc_enabled) {
    unsigned data_crc32 = FUNC1 (data, size - 4);
    if (data_crc32 != index_part_crc32) {
      FUNC2 (stderr, "error reading %lld bytes from index file at position %lld: crc32 mismatch: expected %08x, actual %08x\n", size, offset, index_part_crc32, data_crc32);
      FUNC0 (data_crc32 == index_part_crc32);
      return 0;
    }
  }
  idx_loaded_bytes += r;
  return data;
}