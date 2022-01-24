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
struct raw_message {int total_bytes; } ;
struct iovec {scalar_t__ iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct raw_message*,struct iovec*,int,int) ; 

int FUNC2 (struct iovec *iov, int *iovcnt, int maxcnt, struct raw_message *raw) {
  int t = FUNC1 (raw, iov, maxcnt, raw->total_bytes);
  if (t < 0) {
    *iovcnt = maxcnt;
    int i;
    t = 0;
    for (i = 0; i < maxcnt; i++) {
      t += iov[i].iov_len;
    }
    FUNC0 (t < raw->total_bytes);
    return t;
  } else {
    *iovcnt = t;
    return raw->total_bytes;
  }
}