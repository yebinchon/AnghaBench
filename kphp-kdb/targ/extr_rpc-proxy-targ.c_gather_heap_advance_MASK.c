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
struct TYPE_4__ {unsigned long long value64; int /*<<< orphan*/  remaining; } ;
typedef  TYPE_1__ gh_entry_t ;

/* Variables and functions */
 TYPE_1__** GH ; 
 int GH_N ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1 (void) {
  gh_entry_t *H;
  if (!GH_N) { return; }
  H = GH[1];
  if (!H->remaining) {
    H = GH[GH_N--];
    if (!GH_N) { return; }
  } else {
    FUNC0 (H);
  }
  int i = 1, j;
  unsigned long long value64 = H->value64;
  while (1) {
    j = i*2;
    if (j > GH_N) { break; }
    if (j < GH_N && GH[j+1]->value64 < GH[j]->value64) { j++; }
    if (value64 <= GH[j]->value64) { break; }
    GH[i] = GH[j];
    i = j;
  }
  GH[i] = H;
}