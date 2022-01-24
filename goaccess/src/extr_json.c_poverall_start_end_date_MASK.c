#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ idx; } ;
typedef  int /*<<< orphan*/  GJSON ;
typedef  TYPE_1__ GHolder ;

/* Variables and functions */
 int /*<<< orphan*/  OVERALL_ENDDATE ; 
 int /*<<< orphan*/  OVERALL_STARTDATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char**,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (GJSON * json, GHolder * h, int sp)
{
  char *start = NULL, *end = NULL;

  if (h->idx == 0 || FUNC1 (h, &start, &end, "%d/%b/%Y"))
    return;

  FUNC2 (json, OVERALL_STARTDATE, start, sp, 0);
  FUNC2 (json, OVERALL_ENDDATE, end, sp, 0);

  FUNC0 (end);
  FUNC0 (start);
}