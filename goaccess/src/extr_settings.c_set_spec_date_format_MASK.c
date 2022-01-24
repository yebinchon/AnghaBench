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
struct TYPE_2__ {scalar_t__ spec_date_time_num_format; scalar_t__ spec_date_time_format; scalar_t__ date_num_format; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5 (void)
{
  if (FUNC4 ())
    return;

  if (conf.date_num_format)
    FUNC0 (conf.date_num_format);
  if (conf.spec_date_time_format)
    FUNC0 (conf.spec_date_time_format);
  if (conf.spec_date_time_num_format)
    FUNC0 (conf.spec_date_time_num_format);

  if (FUNC1 () == 0) {
    FUNC3 ();
    FUNC2 ();
  }
}