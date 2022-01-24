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
struct TYPE_2__ {int /*<<< orphan*/ ******* iconfigfile; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 
 int nargc ; 
 int /*<<< orphan*/ ***** nargv ; 

void
FUNC1 (void)
{
  int i;
  if (nargc == 0)
    return;
  for (i = 0; i < nargc; i++)
    FUNC0 (&nargv[i]);
  FUNC0 (nargv);
  FUNC0 (conf.iconfigfile);
}