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
struct TYPE_2__ {int /*<<< orphan*/  color_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  MONOCHROME ; 
 int /*<<< orphan*/  MONOKAI ; 
 int /*<<< orphan*/  STD_GREEN ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3 (const char *name)
{
  int force = 0;

  FUNC0 ();
  if (FUNC2 ("Green", name) == 0) {
    conf.color_scheme = STD_GREEN;
    force = 1;
  } else if (FUNC2 ("Monochrome", name) == 0) {
    conf.color_scheme = MONOCHROME;
    force = 1;
  } else if (FUNC2 ("Monokai", name) == 0) {
    conf.color_scheme = MONOKAI;
    force = 1;
  } else if (FUNC2 ("Custom Scheme", name) == 0) {
    force = 0;
  }
  FUNC1 (force);
}