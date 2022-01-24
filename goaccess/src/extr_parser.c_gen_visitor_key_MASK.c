#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ date_spec_hr; } ;
struct TYPE_4__ {int /*<<< orphan*/  date; int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ GLogItem ;
typedef  int /*<<< orphan*/  GKeyData ;

/* Variables and functions */
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (GKeyData * kdata, GLogItem * logitem)
{
  if (!logitem->date || !logitem->time)
    return 1;

  /* Append time specificity to date */
  if (conf.date_spec_hr)
    FUNC1 (&logitem->date, logitem->time);

  FUNC0 (kdata, logitem->date, logitem->date);

  return 0;
}