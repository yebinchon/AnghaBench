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
typedef  int /*<<< orphan*/  http_parser ;

/* Variables and functions */
 int /*<<< orphan*/ * current_pause_parser ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  settings_dontcall ; 

int
FUNC2 (http_parser *p)
{
  FUNC1(p, 1);
  *current_pause_parser = settings_dontcall;
  return FUNC0(p);
}