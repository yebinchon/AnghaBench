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
struct TYPE_2__ {int indentation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ params ; 
 int FUNC1 (char*) ; 

int FUNC2 (char *s) {
  int b = FUNC1 (s);
  if (b == 1) {
    FUNC0 ("Indentation is enabled.\n");
    params.indentation = 1;
  } else if (b == 0) {
    FUNC0 ("Indentation is disabled.\n");
    params.indentation = 0;
  }
  return 0;
}