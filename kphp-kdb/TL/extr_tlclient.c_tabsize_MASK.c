#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tabsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__ params ; 
 int FUNC1 (char*,char*,int*) ; 

int FUNC2 (char *s) {
  int i;
  if (FUNC1 (s, "%d", &i) == 1) {
    if (i > 8) {
      i = 8;
    }
    if (i < 2) {
      i = 2;
    }
    FUNC0 ("Set tabsize to %d\n", i);
    params.tabsize = i;
  }
  return 0;
}