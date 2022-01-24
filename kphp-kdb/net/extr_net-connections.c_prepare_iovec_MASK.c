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
struct iovec {int iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int /*<<< orphan*/  netbuffer_t ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5 (struct iovec *iov, int *iovcnt, int maxcnt, netbuffer_t *H) {
  int t = 0, i;
  nb_iterator_t Iter;
  FUNC4 (&Iter, H);

  for (i = 0; i < maxcnt; i++) {
    int s = FUNC3 (&Iter);
    if (s <= 0) {
      break;
    }
    iov[i].iov_len = s;
    iov[i].iov_base = FUNC2 (&Iter);
    FUNC0 (FUNC1 (&Iter, s) == s);
    t += s;
  }

  *iovcnt = i;

  return t;
}