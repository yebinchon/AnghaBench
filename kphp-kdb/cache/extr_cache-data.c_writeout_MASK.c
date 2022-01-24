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

/* Variables and functions */
 int BUFFSIZE ; 
 int Buff ; 
 size_t bytes_written ; 
 int /*<<< orphan*/  FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  idx_crc64_complement ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,int) ; 
 int wptr ; 

__attribute__((used)) static int FUNC3 (const void *D, size_t len) {
  bytes_written += len;
  idx_crc64_complement = FUNC0 (D, len, idx_crc64_complement);
  const int res = len;
  const char *d = D;
  while (len > 0) {
    int r = Buff + BUFFSIZE - wptr;
    if (r > len) {
      r = len;
    }
    FUNC2 (wptr, d, r);
    d += r;
    wptr += r;
    len -= r;
    if (len > 0) {
      FUNC1 ();
    }
  }
  return res;
}