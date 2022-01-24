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
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC3 (GJSON * json, int ht_size, int sp)
{
  int isp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC1 (json, "data", sp);
  FUNC2 (json, "unique", ht_size, isp, 1);
  FUNC0 (json, sp, 1);
}