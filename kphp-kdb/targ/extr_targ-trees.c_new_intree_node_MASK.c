#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  treespace_t ;
typedef  int treeref_t ;
struct TYPE_4__ {int free_queue_cnt; int* free_queue; } ;
struct TYPE_3__ {int left; } ;

/* Variables and functions */
 TYPE_2__* TS_HEADER ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

treeref_t FUNC4 (treespace_t TS) {
  // XA-XA 5 PA3
  int m = TS_HEADER->free_queue_cnt - 1;
  long q = FUNC3() & m;
  int p = TS_HEADER->free_queue[q*2];
  if (!p) {
    int i = 5;
    while (--i) {
      q = FUNC3() & m;
      p = TS_HEADER->free_queue[q*2];
      if (p) {
        break;
      }
    }
    if (!p) {
      FUNC2 (!TS_HEADER->free_queue[q*2+1]);
      FUNC1 (TS);
      p = TS_HEADER->free_queue[q*2];
      FUNC2 (p);
    }
  }
  TS_HEADER->free_queue[q*2] = FUNC0(p)->left;
  FUNC2 (--TS_HEADER->free_queue[q*2+1] >= 0);
  return p;
}