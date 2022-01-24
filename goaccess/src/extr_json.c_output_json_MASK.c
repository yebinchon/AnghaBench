#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {scalar_t__ size; char* buf; } ;
typedef  int /*<<< orphan*/  GLog ;
typedef  TYPE_1__ GJSON ;
typedef  int /*<<< orphan*/  GHolder ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int nlines ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (GLog * glog, GHolder * holder, const char *filename)
{
  GJSON *json = NULL;
  FILE *fp;

  if (filename != NULL)
    fp = FUNC2 (filename, "w");
  else
    fp = stdout;

  if (!fp)
    FUNC0 ("Unable to open JSON file: %s.", FUNC6 (errno));

  /* use new lines to prettify output */
  if (conf.json_pretty_print)
    nlines = 1;

  /* spit it out */
  if ((json = FUNC5 (glog, holder)) && json->size > 0) {
    FUNC3 (fp, "%s", json->buf);
    FUNC4 (json);
  }

  FUNC1 (fp);
}