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
struct TYPE_2__ {int /*<<< orphan*/  time_format; int /*<<< orphan*/  spec_date_time_num_format; int /*<<< orphan*/  spec_date_time_format; int /*<<< orphan*/  date_num_format; int /*<<< orphan*/  date_format; int /*<<< orphan*/  log_format; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1 (void)
{
  FUNC0 (conf.log_format);
  FUNC0 (conf.date_format);
  FUNC0 (conf.date_num_format);
  FUNC0 (conf.spec_date_time_format);
  FUNC0 (conf.spec_date_time_num_format);
  FUNC0 (conf.time_format);
}