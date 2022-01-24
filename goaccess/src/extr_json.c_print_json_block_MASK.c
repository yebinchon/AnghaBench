#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ GMetrics ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 int /*<<< orphan*/  TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC10 (GJSON * json, GMetrics * nmetrics, int sp)
{
  /* print hits */
  FUNC4 (json, nmetrics, sp);
  /* print visitors */
  FUNC9 (json, nmetrics, sp);
  /* print bandwidth */
  FUNC2 (json, nmetrics, sp);

  /* print time served metrics */
  FUNC1 (json, nmetrics, sp);
  FUNC3 (json, nmetrics, sp);
  FUNC6 (json, nmetrics, sp);

  /* print protocol/method */
  FUNC7 (json, nmetrics, sp);
  FUNC8 (json, nmetrics, sp);

  /* data metric */
  FUNC5 (json, "%.*s\"data\": \"", sp, TAB);
  FUNC0 (json, nmetrics->data);
  FUNC5 (json, "\"");
}