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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int TL_IN_POS ; 
 int TL_IN_REMAINING ; 
 int TL_OUT_POS ; 
 int TL_OUT_REMAINING ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3 (int len, int advance) {
  if (!&TL_COPY_THROUGH || FUNC1 (len) < 0 || FUNC2 (len) < 0) {
    return -1;
  }
  FUNC0 (len, advance);
  if (advance) {
    TL_IN_POS += len;
    TL_IN_REMAINING -= len;
  }
  TL_OUT_POS += len;
  TL_OUT_REMAINING -= len;
  return len;
}