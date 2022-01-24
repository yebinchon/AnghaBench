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
struct TYPE_2__ {char* html_report_title; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* HTML_REPORT_TITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2 (FILE * fp)
{
  const char *title =
    conf.html_report_title ? conf.html_report_title : HTML_REPORT_TITLE;

  FUNC1 (fp, "<title>");
  FUNC0 (fp, (char *) title);
  FUNC1 (fp, "</title>");
}