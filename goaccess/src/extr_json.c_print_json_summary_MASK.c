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
typedef  int /*<<< orphan*/  GLog ;
typedef  int /*<<< orphan*/  GJSON ;
typedef  int /*<<< orphan*/  GHolder ;

/* Variables and functions */
 int /*<<< orphan*/  GENER_ID ; 
 TYPE_1__ conf ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC18 (GJSON * json, GLog * glog, GHolder * holder)
{
  int sp = 0, isp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    sp = 1, isp = 2;

  FUNC2 (json, GENER_ID, sp);
  /* generated start/end date */
  FUNC14 (json, holder, isp);
  /* generated date time */
  FUNC4 (json, isp);
  /* total requests */
  FUNC13 (json, glog, isp);
  /* valid requests */
  FUNC16 (json, glog, isp);
  /* invalid requests */
  FUNC7 (json, glog, isp);
  /* generated time */
  FUNC11 (json, isp);
  /* visitors */
  FUNC17 (json, isp);
  /* files */
  FUNC6 (json, isp);
  /* excluded hits */
  FUNC5 (json, glog, isp);
  /* referrers */
  FUNC12 (json, isp);
  /* not found */
  FUNC10 (json, isp);
  /* static files */
  FUNC15 (json, isp);
  /* log size */
  FUNC9 (json, isp);
  /* bandwidth */
  FUNC3 (json, glog, isp);
  /* log path */
  FUNC8 (json, isp);
  FUNC1 (json, sp, FUNC0 () > 0 ? 0 : 1);
}