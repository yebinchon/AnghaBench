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
 long long FUNC0 () ; 

__attribute__((used)) static long long FUNC1 (void) {
  static long long qid = 0;
  while (!qid) {
    qid = (((long long) FUNC0 ()) << 31) | FUNC0 ();
  }
  qid++;
  if (qid < 0) {
    qid = 1;
  }
  return qid;
}