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
struct TYPE_2__ {char* ws_url; scalar_t__ port; int /*<<< orphan*/  real_time_html; scalar_t__ json_pretty_print; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (FILE * fp)
{
  int sp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    sp += 1;

  if (!conf.real_time_html)
    return;

  FUNC3 (fp, "<script type='text/javascript'>");
  FUNC3 (fp, "var connection = ");

  FUNC2 (fp, sp);
  FUNC5 (fp, "url", (conf.ws_url ? conf.ws_url : ""), sp, 0);
  FUNC4 (fp, "port", (conf.port ? FUNC0 (conf.port) : 7890), sp, 1);
  FUNC1 (fp, sp, 1);

  FUNC3 (fp, "</script>");
}