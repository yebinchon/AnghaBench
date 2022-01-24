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
struct TYPE_2__ {int /*<<< orphan*/  config; int /*<<< orphan*/  spell_checker; } ;

/* Variables and functions */
 TYPE_1__** SS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  re_email ; 
 int /*<<< orphan*/  re_url ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int spellers ; 

void FUNC3 (void) {
  int i;
  for (i = 0; i < spellers; i++) {
    FUNC1 (SS[i]->spell_checker);
    FUNC0 (SS[i]->config);
  }
  FUNC2 (&re_email);
  FUNC2 (&re_url);
}