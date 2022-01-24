#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GLog ;
typedef  int /*<<< orphan*/  GHolder ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3 (FILE * fp, GLog * glog, GHolder * holder)
{
  char *json = NULL;

  if ((json = FUNC2 (glog, holder, 1)) == NULL)
    return;

  FUNC0 (fp, "<script type='text/javascript'>");
  FUNC0 (fp, "var json_data=%s", json);
  FUNC0 (fp, "</script>");

  FUNC1 (json);
}