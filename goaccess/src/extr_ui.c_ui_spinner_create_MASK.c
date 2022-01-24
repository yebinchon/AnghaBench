#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ no_parsing_spinner; } ;
struct TYPE_5__ {int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ GSpinner ;

/* Variables and functions */
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_spinner ; 

void
FUNC2 (GSpinner * spinner)
{
  if (conf.no_parsing_spinner)
    return;

  FUNC0 (&(spinner->thread), NULL, (void *) &ui_spinner, spinner);
  FUNC1 (spinner->thread);
}