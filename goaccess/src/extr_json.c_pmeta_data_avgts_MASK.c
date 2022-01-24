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
typedef  int uint64_t ;
struct TYPE_2__ {scalar_t__ json_pretty_print; int /*<<< orphan*/  serve_usecs; } ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC4 (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  uint64_t avg = 0, hits = 0, cumts = 0;

  if (!conf.serve_usecs)
    return;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  cumts = FUNC0 (module, "cumts");
  hits = FUNC0 (module, "hits");
  if (hits > 0)
    avg = cumts / hits;

  FUNC2 (json, "avgts", sp);
  FUNC3 (json, "avg", avg, isp, 1);
  FUNC1 (json, sp, 0);
}