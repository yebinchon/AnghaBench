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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,long long,...) ; 
 long long idx_bytes ; 
 int /*<<< orphan*/  idx_fd ; 
 int idx_loaded_bytes ; 
 long long FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 void* FUNC4 (long long) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 void* FUNC6 (long long) ; 

void *FUNC7 (void *data, long long offset, long long size, int max_size) {
  int r;
  static struct iovec io_req[2];
  static unsigned index_part_crc32;
  FUNC0 (size >= 0 && size <= (long long) (dyn_top - dyn_cur));
  FUNC0 (size <= max_size || !max_size);
  FUNC0 (offset >= 0 && offset <= idx_bytes && offset + size <= idx_bytes);
  if (!data) {
    data = FUNC6 (size);
  } else if (data == (void *) -1) {
    data = FUNC4 (size);
  }
  FUNC0 (FUNC3 (idx_fd, offset, SEEK_SET) == offset);
  io_req[0].iov_base = data;
  io_req[0].iov_len = size;
  io_req[1].iov_base = &index_part_crc32;
  io_req[1].iov_len = 4;
  r = FUNC5 (idx_fd, io_req, 2);
  if (r != size + 4) {
    FUNC2 (stderr, "error reading data from index file: read %lld bytes instead of %lld at position %lld: %m\n", r, size + 4, offset);
    FUNC0 (r == size + 4);
    return 0;
  }
  if (verbosity > 3) {
    FUNC2 (stderr, "loaded %lld bytes from index at position %lld\n", size + 4, offset);
  }
  unsigned data_crc32 = FUNC1 (data, size);
  if (data_crc32 != index_part_crc32) {
    FUNC2 (stderr, "error reading %lld bytes from index file at position %lld: crc32 mismatch: expected %08x, actual %08x\n", size, offset, index_part_crc32, data_crc32);
    FUNC0 (data_crc32 == index_part_crc32);
    return 0;
  }
  idx_loaded_bytes += r;
  return data;
}