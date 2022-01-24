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
struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  int max = 0, min = 0;

  FUNC1 (module, &min, &max);

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC3 (json, "visitors", sp);
  FUNC5 (json, "count", FUNC0 (module, "visitors"), isp, 0);
  FUNC4 (json, "max", max, isp, 0);
  FUNC4 (json, "min", min, isp, 1);
  FUNC2 (json, sp, 0);
}