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
struct index_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct index_entry*) ; 
 struct index_entry* FUNC1 (int) ; 

int FUNC2 (int p1, int p2) {
  int i;
  for (i = p1; i < p2; i++) {
    struct index_entry *E = FUNC1 (i);
    if (!E) { return -2; }
    int r = FUNC0 (E);
    if (r < 0) { return r; }
  }
  return 0;
}