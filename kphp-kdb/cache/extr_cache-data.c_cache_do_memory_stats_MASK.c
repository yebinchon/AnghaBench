#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pos; } ;
typedef  TYPE_1__ cache_buffer_t ;

/* Variables and functions */
 scalar_t__* FreeCnt ; 
 int MAX_RECORD_WORDS ; 
 int PTR_INTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,int) ; 

int FUNC2 (char *output, int olen) {
  cache_buffer_t b;
  FUNC0 (&b, output, olen);
  int i;
  for (i = PTR_INTS; i <= MAX_RECORD_WORDS + 3; i++) {
    if (FreeCnt[i]) {
      FUNC1 (&b, "FreeCnt[%d] = %d\n", i, (int) FreeCnt[i]);
    }
  }
  return b.pos;
}