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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {scalar_t__ json_pretty_print; int /*<<< orphan*/  bandwidth; } ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5 (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  uint64_t max = 0, min = 0;

  if (!conf.bandwidth)
    return;

  FUNC0 (module, &min, &max);

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC3 (json, "bytes", sp);
  FUNC4 (json, "count", FUNC1 (module, "bytes"), isp, 0);
  FUNC4 (json, "max", max, isp, 0);
  FUNC4 (json, "min", min, isp, 1);
  FUNC2 (json, sp, 0);
}