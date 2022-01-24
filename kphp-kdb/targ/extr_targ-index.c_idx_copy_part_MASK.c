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
 long BUFFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int idx_rptr ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3 (long len) {
  while (len > 0) {
    int to_load = len < BUFFSIZE ? len : BUFFSIZE;
    int bytes = FUNC1 (to_load);
    FUNC0 (bytes > 0);
    if (bytes > to_load) {
      FUNC0 (bytes <= to_load + 4);
      bytes = to_load;
    }
    FUNC2 (idx_rptr, bytes);
    idx_rptr += bytes;
    len -= bytes;
  }
  FUNC0 (!len);
}