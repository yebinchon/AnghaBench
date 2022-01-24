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
typedef  int /*<<< orphan*/  GHolder ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DATE_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int nlines ; 
 int /*<<< orphan*/  now_tm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int /*<<< orphan*/ ) ; 

void
FUNC13 (GLog * glog, GHolder * holder, const char *filename)
{
  FILE *fp;
  char now[DATE_TIME];

  if (filename != NULL)
    fp = FUNC2 (filename, "w");
  else
    fp = stdout;

  if (!fp)
    FUNC0 ("Unable to open HTML file: %s.", FUNC11 (errno));

  /* use new lines to prettify output */
  if (conf.json_pretty_print)
    nlines = 1;
  FUNC10 (nlines);

  FUNC3 ();
  FUNC12 (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);

  FUNC7 (fp);

  FUNC5 (fp, now);
  FUNC9 (fp);
  FUNC8 (fp, glog, holder);
  FUNC4 (fp);

  FUNC6 (fp);

  FUNC1 (fp);
}